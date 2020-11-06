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


int major;

static struct class *dma_class   = NULL;
static int dma_init(void);
static void dma_exit(void);

static int dma_open(struct inode *inode, struct file *file);
static int dma_close(struct inode *inode, struct file *file);



static struct file_operations dma_lops={
	.owner 	=THIS_MODULE,
	.open  	=dma_open,
	.release=dma_close


};


static int dma_init(void){
    	major=register_chrdev(0,"dma_dev",&dma_lops);
    	dma_class=class_create(THIS_MODULE,"dma_dev");
    	device_create(dma_class, NULL, MKDEV(major,0), NULL, "dma_dev");
    	printk(KERN_ALERT "major dev number= %d", major);
   	return 0;
}

static void dma_exit(void){
    	unregister_chrdev(major,"dma_dev");
    	device_destroy(dma_class,MKDEV(major,0));
    	class_destroy(dma_class);
}

static int dma_open(struct inode *inode,struct file *file){
	int err;
    	printk("DMA open\n");
    	axidma_addr = dma_alloc_coherent(NULL,DMA_LENGTH,&axidma_handle,GFP_KERNEL);
    	return 0;
}

static int dma_close(struct inode *inode, struct file *file){
	
	dma_free_coherent(NULL,DMA_LENGTH,axidma_addr,axidma_handle);
	printk("DMA close\n");
	return 0;
}



module_init(dma_init);
module_exit(dma_exit);

MODULE_AUTHOR("TEST@dma");
MODULE_DESCRIPTION("dma driver");
MODULE_ALIAS("dma linux driver");
MODULE_LICENSE("GPL");
