#include <linux/module.h>
#include <linux/init.h>
#include <linux/pci.h>
#include <linux/slab.h>
#include <linux/dma-mapping.h>
#include <linux/dmapool.h>
#include <linux/device.h>

// int direction = PCI_DMA_TODEVICE ;
// int direction = PCI_DMA_FROMDEVICE ;
static int direction = PCI_DMA_BIDIRECTIONAL;
//int direction = PCI_DMA_NONE;

static char *kbuf;
static dma_addr_t handle;
static size_t size = (10 * PAGE_SIZE);
static struct dma_pool *mypool;
static size_t pool_size = 1024;
static size_t pool_align = 8;

static void my_release(struct device *dev)
{
    pr_info("releasing DMA device\n");
}

static struct device dev = {
    .release = my_release
};

static void output(char *kbuf, dma_addr_t handle, size_t size, char *string)
{
    unsigned long diff;
    diff = (unsigned long)kbuf - handle;
    pr_info("kbuf=%12p, handle=%12p, size = %d\n", kbuf,
        (unsigned long *)handle, (int)size);
    pr_info("(kbuf-handle)= %12p, %12lu, PAGE_OFFSET=%12lu, compare=%lu\n",
        (void *)diff, diff, PAGE_OFFSET, diff - PAGE_OFFSET);
    strcpy(kbuf, string);
    pr_info("string written was, %s\n", kbuf);
}

static int __init my_init(void)
{
    dev_set_name(&dev, "my0");
    device_register(&dev);

    /* dma_alloc_coherent method */

    pr_info("Loading DMA allocation test module\n");
    pr_info("\nTesting dma_alloc_coherent()..........\n\n");
    kbuf = dma_alloc_coherent(NULL, size, &handle, GFP_KERNEL);
    output(kbuf, handle, size, "This is the dma_alloc_coherent() string");

    dma_free_coherent(NULL, size, kbuf, handle);
    device_unregister(&dev);

    return 0;
}

static void __exit my_exit(void)
{
    pr_info("Module Unloading\n");
}

module_init(my_init);
module_exit(my_exit);

MODULE_AUTHOR("Jerry Cooperstein");
MODULE_DESCRIPTION("LDD:2.0 s_23/lab1_dma.c");
MODULE_LICENSE("GPL v2");
