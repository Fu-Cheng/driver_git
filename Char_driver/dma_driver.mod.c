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
	{ 0x999e8297, "vfree" },
	{ 0x37a0cba, "kfree" },
	{ 0x4302d0eb, "free_pages" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
	{ 0x2dee2512, "kmalloc_caches" },
	{ 0xd6ee688f, "vmalloc" },
	{ 0x742737a4, "kmem_cache_alloc" },
	{ 0xc5850110, "printk" },
	{ 0x6a5cb5ee, "__get_free_pages" },
};

MODULE_INFO(depends, "");

