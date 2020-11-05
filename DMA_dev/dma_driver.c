#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/fs.h>
#include <linux/device.h>
#include <asm/io.h>
#include <linux/init.h>
#include <linux/platform_device.h>
#include <linux/miscdevice.h>
#include <linux/ioport.h>
#include <linux/of.h>
#include <linux/uaccess.h>
#include <linux/interrupt.h>
#include <asm/irq.h>
#include <linux/irq.h>
#include <asm/uaccess.h>
#include <linux/dma-mapping.h>

//DMA based address
#define DMA_S2MM_ADDR	0X40400000
#define DMA_MM2S_ADDR	0X40410000

//DMA MM2S control register
volatile unsigned int	*mm2s_cr;
#define MM2S_DMACR	0X00000000

//DMA MM2S state register
volatile unsigned int	*mm2s_sr;
#define MM2S_DMASR	0X00000004

//DMA MM2S source address
volatile unsigned int 	*mm2s_sa;
#define MM2S_SA		0X00000018

//DMA MM2S length
volatile unsigned int 	*mm2s_len;
#define MM2S_LENGTH	0X00000028

//DMA S2MM control register
volatile unsigned int  	*s2mm_cr;
#define S2MM_DMACR	0X00000030

//DMA S2MM state register
volatile unsigned int  	*s2mm_sr;
#define S2MM_DMASR	0X00000034

//DMA S2MM destination address
volatile unsigned int  	*s2mm_da;
#define S2MM_DA		0X00000048

//DMA S2MM length
volatile unsigned int  	*s2mm_len;
#define S2MM_LENGTH	0X00000058

#define DMA_LENGTH	524288

dma_addr_t	axidma_handle;
volatile unsigned int	*axidma_addr;

static irqreturn_t dma_mm2s_irq(int irq,void *dev_id){
    printk("\nPs write data to fifo is over! irq=%d\n",irq);
    iowrite32(0x00001000,mm2s_sr);
    return IRQ_HANDLED;
}
static irqreturn_t dma_s2mm_irq(int irq,void *dev_id){
    iowrite32(0x00001000,s2mm_sr);
    printk("\nps read data from fifo is over! irq=%d\n",irq);
    return IRQ_HANDLED;
}


static struct class *dma_class   = NULL;
static int dma_init(void);
static void dma_exit(void);

static int dma_open(struct inode *inode, struct file *file);
static int dma_close(struct inode *inode, struct file *file);
static int dma_write(struct file *file, const char __user *buf, size_t count, loff_t *ppos);
static int dma_read(struct file *file, char __user *buf, size_t size, loff_t *ppos);

static struct file_operations dma_fops={
	.open  	=dma_open,
	.release=dma_close,
	.read  	=dma_read,
	.write 	=dma_write,
};

static int Major;
static int dma_init(void){
    	//major=register_chrdev(0,"dma_dev",&dma_lops);
	int ret;
	dev_t dev_no, dev;

	ret=alloc_chrdev_region(&dev_no, 0, 1, "dma_dev");
	
	if (ret <0){
		printk(KERN_ALERT "Registering char device failed with %d\n", ret);
		return ret;
	}
	
	Major=MAJOR(dev_no);
	dev=MKDEV(Major, 0);
	printk("The major number for your device is %d\n", Major);
		
	/*
    	dma_class=class_create(THIS_MODULE,"dma_dev");
    	device_create(dma_class, NULL, MKDEV(major,0), NULL, "dma_dev");
    	printk(KERN_ALERT "major dev number= %d", major);
	
    	mm2s_cr  =  ioremap(DMA_MM2S_ADDR+MM2S_DMACR, 4);
    	mm2s_sr  =  ioremap(DMA_MM2S_ADDR+MM2S_DMASR, 4);
    	mm2s_sa  =  ioremap(DMA_MM2S_ADDR+MM2S_SA,    4);
    	mm2s_len =  ioremap(DMA_MM2S_ADDR+MM2S_LENGTH,4);

    	s2mm_cr  =  ioremap(DMA_S2MM_ADDR+S2MM_DMACR, 4);
    	s2mm_sr  =  ioremap(DMA_S2MM_ADDR+S2MM_DMASR, 4);
    	s2mm_da  =  ioremap(DMA_S2MM_ADDR+S2MM_DA,    4);
    	s2mm_len =  ioremap(DMA_S2MM_ADDR+S2MM_LENGTH,4);
*/
   	return 0;
}

static void dma_exit(void)
{
    	//unregister_chrdev(major,"dma_dev");
	unregister_chrdev_region(Major, 1);
	printk(KERN_INFO "clean up dma");
    
    	//device_destroy(dma_class,MKDEV(major,0));
    	//class_destroy(dma_class);

    //free_irq(dma_mm2s_irq, NULL);
    //free_irq(dma_s2mm_irq, NULL);
	/*
    dma_free_coherent(NULL,DMA_LENGTH,axidma_addr,axidma_handle);

    iounmap(mm2s_cr);
    iounmap(mm2s_sr);
    iounmap(mm2s_sa);
    iounmap(mm2s_len);

    iounmap(s2mm_cr);
    iounmap(s2mm_sr);
    iounmap(s2mm_da);
    iounmap(s2mm_len);
*/	

}

static int dma_open(struct inode *inode,struct file *file){
	int err;
    	printk("DMA open\n");
    	axidma_addr = dma_alloc_coherent(NULL,DMA_LENGTH,&axidma_handle,GFP_KERNEL);
    	err = request_irq(61,dma_mm2s_irq,IRQF_TRIGGER_RISING,"dma_dev",NULL);
    	printk("err=%d\n",err);
    	err = request_irq(62,dma_s2mm_irq,IRQF_TRIGGER_RISING,"dma_dev",NULL);
    	printk("err=%d\n",err);
    	return 0;
}

static int dma_close(struct inode *inode, struct file *file){
	printk("DMA close\n");
    	free_irq(dma_mm2s_irq, NULL);
    	free_irq(dma_s2mm_irq, NULL);
}

static int dma_write(struct file *file,const char __user *buf, size_t count,loff_t *ppos)
{
    unsigned int mm2s_status = 0;
    printk("dma write start !\n");
    if(count>DMA_LENGTH)
    {
	printk("the number of data is too large!\n");
	return 0;
    }
    memcpy(axidma_addr,buf,count);

    iowrite32(0x00001001,mm2s_cr);
    iowrite32(axidma_handle,mm2s_sa);
    iowrite32(count,mm2s_len);

    mm2s_status = ioread32(mm2s_sr);
    while((mm2s_status&(1<<1))==0)
    {
        mm2s_status = ioread32(mm2s_sr);
    }
    printk("mm2s_status =0x%x\n",mm2s_status);
    printk("dma write is over!\n");

    return 0;
}

static int dma_read(struct file *file,char __user *buf,size_t size,loff_t *ppos)
{
    unsigned int s2mm_status=0;
    printk("dma read start!\n");
    if(size>DMA_LENGTH)
    {
	printk("the number of data is not enough!\n");
	return 1;
    }

    iowrite32(0x00001001,s2mm_cr);
    iowrite32(axidma_handle,s2mm_da);
    iowrite32(size,s2mm_len);
    
    s2mm_status=ioread32(s2mm_sr);
    while((s2mm_status&(1<<1))==0)
    {
        s2mm_status=ioread32(s2mm_sr);
    }
    printk("s2mm_sr=0x%x\n",s2mm_status);
    
    memcpy(buf,axidma_addr,size);
    printk("\ndma read is over!\n");
    return 0;
}

module_init(dma_init);
module_exit(dma_exit);

MODULE_AUTHOR("TEST@dma");
MODULE_DESCRIPTION("dma driver");
MODULE_ALIAS("dma linux driver");
MODULE_LICENSE("GPL");
