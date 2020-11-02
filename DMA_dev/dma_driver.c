#include <linux/init.h>
#include <linux/module.h>
#include <linux/fs.h>


#include <linux/types.h>
#include <linux/cdev.h>

#include <linux/kernel.h>
#include <linux/device.h>
#include <asm/io.h>


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

MODULE_LICENSE("Dual BSD/GPL");

//DMA based address
#define DMA_S2MM_ADDR	0x40400000
#define DMA_MM2S_ADDR	0x40410000

//DMA MM2S control regisiter
volatile unsigned int  *mm2s_cr;
#define MM2S_DMACR 0X00000000

//DMA MM2S status regisiter
volatile unsigned int *mm2s_sr;
#define MM2S_DMASR 0X00000004

//DMA MM2S source address
volatile unsigned int *mm2s_sa;
#define MM2S_SA 0X00000018

//DMA MM2S length
volatile unsigned int *mm2s_len;
#define MM2S_LENGTH 0X00000028

//DMA S2MM control regisiter
volatile unsigned int  *s2mm_cr;
#define S2MM_DMACR 0X00000030

//DMA S2MM status regisiter
volatile unsigned int  *s2mm_sr;
#define S2MM_DMASR 0X00000034

//DMA S2MM destination address
volatile unsigned int  *s2mm_da;
#define S2MM_DA	 0X00000048

//DMA S2MM length
volatile unsigned int  *s2mm_len;
#define S2MM_LENGTH 0X00000058

#define DMA_LENGTH 524288



dma_addr_t axidma_handle;
volatile unsigned int *axidma_addr;


static struct class *dma_class=NULL;

static int dma_init(void);
static void dma_exit(void);
static int dma_open(struct inode *inode, struct file *file);
static int dma_close(struct inode *inode, struct file *file);
static ssize_t dma_read(struct file *file, char *buf, size_t size, loff_t *ppos);
static ssize_t dma_write(struct file *file, const char *buf, size_t size, loff_t *ppos);


static struct file_operations dma_flops={
	//.owner	=THIS_MODULE
	.open	=dma_open,
	.release=dma_close,
	.read	=dma_read,
	.write	=dma_write
};

#define EXAMPLE_MAJOR	60
#define EXAMPLE_NAME 	"dma_dev"

static int dma_init(void){
	int result;	
	result=register_chrdev(EXAMPLE_MAJOR, EXAMPLE_NAME, &dma_flops);
	dma_class=class_create(THIS_MODULE, EXAMPLE_NAME);
	device_create(dma_class, NULL, MKDEV(result, 0), NULL, EXAMPLE_NAME);
	if (result<0){
		printk("dma: Failed to register character device\n");
		return result;
	}
	//printk("major dev number= %d",major);

    	mm2s_cr  =  ioremap(DMA_MM2S_ADDR+MM2S_DMACR, 4);
    	mm2s_sr  =  ioremap(DMA_MM2S_ADDR+MM2S_DMASR, 4);
    	mm2s_sa  =  ioremap(DMA_MM2S_ADDR+MM2S_SA,    4);
    	mm2s_len =  ioremap(DMA_MM2S_ADDR+MM2S_LENGTH,4);

    	s2mm_cr  =  ioremap(DMA_S2MM_ADDR+S2MM_DMACR, 4);
    	s2mm_sr  =  ioremap(DMA_S2MM_ADDR+S2MM_DMASR, 4);
    	s2mm_da  =  ioremap(DMA_S2MM_ADDR+S2MM_DA,    4);
    	s2mm_len =  ioremap(DMA_S2MM_ADDR+S2MM_LENGTH,4);

   	return 0;
}


static void dma_exit(void){
	unregister_chrdev(EXAMPLE_MAJOR, EXAMPLE_NAME);
}

static int dma_open(struct inode *inode, struct file *filp){
	printk("example 1: open\n");
	return 0;
}

static int dma_close(struct inode *inode, struct file *filp){
	printk("example 1: close\n");
	return 0;
}
static ssize_t dma_read(struct file *file, char *buf, size_t size, loff_t *ppos){
	return 0;
}
static ssize_t dma_write(struct file *file, const char *buf, size_t count, loff_t *ppos){
	return 0;
}

module_init(dma_init);
module_exit(dma_exit);

//MODULE_AUTHOR("TEST@dma");
//MODULE_DESCRIPTION("dma driver");
//MODULE_ALIAS("dma linux driver");






