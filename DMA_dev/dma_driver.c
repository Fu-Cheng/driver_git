#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/fs.h>
#include <linux/cdev.h>
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
#define DMA_S2MM_ADDR	0x40400000
#define DMA_MM2S_ADDR	0x40410000

//DMA MM2S control register
volatile unsigned int	*mm2s_cr;
#define MM2S_DMACR	0x00000000

//DMA MM2S state register
volatile unsigned int	*mm2s_sr;
#define MM2S_DMASR	0x00000004

//DMA MM2S source address
volatile unsigned int 	*mm2s_sa;
#define MM2S_SA		0x00000018

//DMA MM2S length
volatile unsigned int 	*mm2s_len;
#define MM2S_LENGTH	0x00000028

//DMA S2MM control register
volatile unsigned int  	*s2mm_cr;
#define S2MM_DMACR	0x00000030

//DMA S2MM state register
volatile unsigned int  	*s2mm_sr;
#define S2MM_DMASR	0x00000034

//DMA S2MM destination address
volatile unsigned int  	*s2mm_da;
#define S2MM_DA		0x00000048

//DMA S2MM length
volatile unsigned int  	*s2mm_len;
#define S2MM_LENGTH	0x00000058

#define DMA_LENGTH	16

dma_addr_t	axidma_handle;
volatile unsigned int	*axidma_addr;

//u32 axidma_handle;
//u32 *axidma_addr;

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



static int dma_init(void);
static void dma_exit(void);

static int dma_open(struct inode *inode, struct file *file);
static int dma_close(struct inode *inode, struct file *file);
static int dma_write(struct file *file, const char __user *buf, size_t count, loff_t *ppos);
static int dma_read(struct file *file, char __user *buf, size_t size, loff_t *ppos);
static struct file_operations dma_fops={
	open:		dma_open,
	release:	dma_close,
	read:  		dma_read,
	write: 		dma_write
};
static struct class *dma_class   = NULL;
static int Major, major;
struct cdev *kernel_cdev;
struct device *kernel_device;

static int dma_init(void){
    	//major=register_chrdev(0,"dma_dev",&dma_lops);
	/*
	int ret;
	dev_t dev_no, dev;
	ret=alloc_chrdev_region(&dev_no, 0, 1, "dma_dev");
	if (ret <0){
		printk(KERN_ALERT "Registering char device failed with %d\n", ret);
		return ret;
	}
	Major=MAJOR(dev_no);
	dev=MKDEV(Major, 0);
	printk(KERN_ALERT "The major number for your device is %d\n", Major);

	kernel_cdev=cdev_alloc();
	kernel_cdev->ops=&dma_fops;
	kernel_cdev->owner=THIS_MODULE;
	ret=cdev_add(kernel_cdev, dev_no, 1);
	if (ret<0){
		printk(KERN_ALERT "Unalbe to allocate cdev");
		return ret;
	}
	
		
    	dma_class=class_create(THIS_MODULE,"dma_dev");
    	dev=device_create(dma_class, NULL, MKDEV(Major,0), NULL, "dma_dev");
	*/

	major=register_chrdev(0,"dma_dev",&dma_fops);
    	dma_class= class_create(THIS_MODULE,"dma_dev");
    	device_create(dma_class,NULL,MKDEV(major,0),NULL,"dma_dev");
    	printk(KERN_ALERT "major dev number= %d",major);
	
    	//mm2s_cr  =  ioremap(DMA_MM2S_ADDR+MM2S_DMACR, 4);
    	//mm2s_sr  =  ioremap(DMA_MM2S_ADDR+MM2S_DMASR, 4);
    	//mm2s_sa  =  ioremap(DMA_MM2S_ADDR+MM2S_SA,    4);
    	//mm2s_len =  ioremap(DMA_MM2S_ADDR+MM2S_LENGTH,4);

    	//s2mm_cr  =  ioremap(DMA_S2MM_ADDR+S2MM_DMACR, 4);
    	//s2mm_sr  =  ioremap(DMA_S2MM_ADDR+S2MM_DMASR, 4);
    	//s2mm_da  =  ioremap(DMA_S2MM_ADDR+S2MM_DA,    4);
    	//s2mm_len =  ioremap(DMA_S2MM_ADDR+S2MM_LENGTH,4);

   	return 0;
}

static void dma_exit(void)
{
    	//unregister_chrdev(major,"dma_dev");
	cdev_del(kernel_cdev);
	unregister_chrdev_region(Major, 1);
	
    
    	device_destroy(dma_class, MKDEV(Major,0));
    	class_destroy(dma_class);

    	//free_irq(dma_mm2s_irq, NULL);
    	//free_irq(dma_s2mm_irq, NULL);

    	//dma_free_coherent(NULL,DMA_LENGTH,axidma_addr,axidma_handle);

    	//iounmap(mm2s_cr);
    	//iounmap(mm2s_sr);
    	//iounmap(mm2s_sa);
    	//iounmap(mm2s_len);

    	//iounmap(s2mm_cr);
    	//iounmap(s2mm_sr);
    	//iounmap(s2mm_da);
    	//iounmap(s2mm_len);

	printk(KERN_ALERT "clean up dma");

}

static int dma_open(struct inode *inode,struct file *file){
	int err;
    	printk("DMA open\n");
	//dma_set_coherent_mask(kernel_cdev, DMA_BIT_MASK(64));
	//phy_addr=ioremap(kernel_cdev->dev, 4);
	//dma_set_mask (kernel_cdev->dev, 0xffffff);
    	//axidma_addr = dma_alloc_coherent(&client->dev, DMA_LENGTH, &axidma_handle, GFP_KERNEL);
	printk("AAAAAAA\n");
    	//err = request_irq(61, dma_mm2s_irq, IRQF_TRIGGER_RISING, "dma_dev",NULL);
    	//printk("err=%d\n",err);
    	//err = request_irq(62,dma_s2mm_irq,IRQF_TRIGGER_RISING, "dma_dev",NULL);
    	//printk("err=%d\n",err);
    	return 0;
}

static int dma_close(struct inode *inode, struct file *file){
	printk("DMA close\n");
    	//free_irq(dma_mm2s_irq, NULL);
    	//free_irq(dma_s2mm_irq, NULL);
	//dma_free_coherent(kernel_device->devt, DMA_LENGTH, axidma_addr, axidma_handle);
}

static int dma_write(struct file *file,const char __user *buf, size_t count,loff_t *ppos){
	printk("dma write start !\n");
    	return 0;
}

static int dma_read(struct file *file,char __user *buf,size_t size,loff_t *ppos){
    	printk("dma read start!\n");
    	return 0;
}

module_init(dma_init);
module_exit(dma_exit);

MODULE_AUTHOR("TEST@dma");
MODULE_DESCRIPTION("dma driver");
MODULE_ALIAS("dma linux driver");
MODULE_LICENSE("GPL");
