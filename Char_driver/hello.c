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

MODULE_LICENSE("Dual BSD/GPL");

#define DEVNAME "hello"

static dev_t dev;
static struct class *hello_class;
static struct cdev *hello_cdev;

static int example_open(struct inode *inode, struct file *filp){
	printk("example 1: open\n");
	return 0;
}

static int example_close(struct inode *inode, struct file *filp){
	printk("example 1: close\n");
	return 0;
}
static ssize_t example_read(struct file *filp, char *buf, size_t size, loff_t *f_pos){
	printk("example 1: read (size=%zu)\n", size);
	return 0;
}
static ssize_t example_write(struct file *filp, const char *buf, size_t size, loff_t *f_pos){
	printk("example 1: write (size=%zu)\n", size);
	return size;
}

static struct file_operations example_fops={
	.open=example_open,
	.release=example_close,
	.read=example_read,
	.write=example_write,
};

static int Major;

static int hello_init(void){
	int error;
	error=alloc_chrdev_region(&dev, 0, 2, "hello");
	if (error){
		printk(KERN_ALERT "hello:alloc_chrdev_region failed!\n");
		goto out;
	}
	Major=MAJOR(dev);
	hello_cdev=cdev_alloc();
	if (hello_cdev==NULL){
		printk(KERN_ALERT "hello:cdev_alloc failed!\n");
		error=-ENOMEM;
		goto out_chrdev;
	}
	hello_cdev->ops = &example_fops;
	hello_cdev->owner= THIS_MODULE;
	error=cdev_add(hello_cdev, dev, 1);
	if (error){
		printk(KERN_ALERT "hello:cdev_all failed!\n");
		goto out_cdev;
	}
	hello_class=class_create(THIS_MODULE, DEVNAME);
	if(IS_ERR(hello_class)){
		error=PTR_ERR(hello_class);
		goto out_chrdev;
	}
	device_create(hello_class, NULL, MKDEV(Major, 0), NULL, DEVNAME);

	//memset(hello_buf, 0, sizeof(hello_buf);
	//memcpy(hello_buf, DEFAULT_MSG, sizeof(DEFAULT_MSG));
	printk(KERN_ALERT "hello: Hello World\n");

	return 0;
	out_cdev: cdev_del(hello_cdev);
	out_chrdev: unregister_chrdev_region(hello_cdev->dev, 2);
	out: return error;
}

static void hello_exit(void){
	device_destroy(hello_class, MKDEV(Major, 0));
	class_destroy(hello_class);
	unregister_chrdev_region(hello_cdev->dev, 2);
	cdev_del(hello_cdev);
	printk(KERN_ALERT "hello:Goodbye World\n");
}

module_init(hello_init);
module_exit(hello_exit);



