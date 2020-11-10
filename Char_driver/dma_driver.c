#include <linux/init.h>
#include <linux/module.h>
#include <linux/irq.h>
#include <linux/io.h>
#include <linux/irqdomain.h>
#include <linux/interrupt.h>
#include <linux/of.h>
#include <linux/of_address.h>

#include <asm/exception.h>
#include <asm/mach/irq.h>

void int068_interrupt(int irq, void *dev_id, struct pt_regs *regs)
{
    printk("Interrupt should be handled there\n");
}

static int __init clcdint_init(void)
{
    unsigned int irq;
    unsigned int irqflags;
    int ret;

    irq=68;
    irqflags=IRQF_SHARED | IRQF_NO_SUSPEND;

    ret = request_irq(irq, int068_interrupt,
            irqflags, "clcdint-int068", NULL);

    if (ret!=0) {
            printk("ERROR: Cannot request IRQ %d", irq);
            printk(" - code %d , EIO %d , EINVAL %d\n", ret, EIO, EINVAL);
    }

    printk("CLCDINT_INIT\n");
    return 0;
}

module_init(clcdint_init);

static void __exit
clcdint_exit(void)
{
    unsigned int irq;
    irq=68;
    free_irq(irq, NULL);
    printk("CLCDINT_EXIT\n");
}

module_exit(clcdint_exit);
