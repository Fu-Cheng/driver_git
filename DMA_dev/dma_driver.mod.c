#include <linux/build-salt.h>
#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

BUILD_SALT;

MODULE_INFO(vermagic, VERMAGIC_STRING);
MODULE_INFO(name, KBUILD_MODNAME);

__visible struct module __this_module
__section(.gnu.linkonce.this_module) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

#ifdef CONFIG_RETPOLINE
MODULE_INFO(retpoline, "Y");
#endif

static const struct modversion_info ____versions[]
__used __section(__versions) = {
	{ 0x728616e3, "module_layout" },
	{ 0xedc03953, "iounmap" },
	{ 0x9045fab1, "class_destroy" },
	{ 0x7dcea277, "device_destroy" },
	{ 0x6091b333, "unregister_chrdev_region" },
	{ 0xe6ea4192, "cdev_del" },
	{ 0xe97c4103, "ioremap" },
	{ 0x32b91a6b, "device_create" },
	{ 0xb265f046, "__class_create" },
	{ 0x6308e738, "cdev_add" },
	{ 0xcfd8862e, "cdev_alloc" },
	{ 0xdecd0b29, "__stack_chk_fail" },
	{ 0xe3ec2f2b, "alloc_chrdev_region" },
	{ 0x8f678b07, "__stack_chk_guard" },
	{ 0xafdf3d00, "dma_alloc_attrs" },
	{ 0xfa37b305, "dma_free_attrs" },
	{ 0xc1514a3b, "free_irq" },
	{ 0x9d669763, "memcpy" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0xc5850110, "printk" },
	{ 0x822137e2, "arm_heavy_mb" },
};

MODULE_INFO(depends, "");

