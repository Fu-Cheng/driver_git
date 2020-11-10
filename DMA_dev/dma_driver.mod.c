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
	{ 0x9045fab1, "class_destroy" },
	{ 0x7dcea277, "device_destroy" },
	{ 0x6bc3fbc0, "__unregister_chrdev" },
	{ 0x32b91a6b, "device_create" },
	{ 0xb265f046, "__class_create" },
	{ 0x6a85cde6, "__register_chrdev" },
	{ 0x92d5838e, "request_threaded_irq" },
	{ 0xafdf3d00, "dma_alloc_attrs" },
	{ 0x822137e2, "arm_heavy_mb" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0xc5850110, "printk" },
};

MODULE_INFO(depends, "");

