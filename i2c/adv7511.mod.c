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
	{ 0x80fec803, "i2c_del_driver" },
	{ 0x215b84c5, "i2c_register_driver" },
	{ 0x7c63665b, "drm_add_edid_modes" },
	{ 0x4fc62cf4, "drm_connector_update_edid_property" },
	{ 0x4ca12493, "drm_do_get_edid" },
	{ 0x8352d573, "regmap_bulk_write" },
	{ 0x3fea538c, "hdmi_avi_infoframe_pack" },
	{ 0x148f46e3, "hdmi_avi_infoframe_init" },
	{ 0xa8ad5d01, "drm_detect_hdmi_monitor" },
	{ 0x8e865d3c, "arm_delay_ops" },
	{ 0xb108db62, "gpiod_set_value_cansleep" },
	{ 0xcaa0d6c1, "devm_request_threaded_irq" },
	{ 0x5bbe49f4, "__init_waitqueue_head" },
	{ 0xc70fec7b, "i2c_new_dummy" },
	{ 0x2e7c0999, "regmap_register_patch" },
	{ 0x83ba7106, "__devm_regmap_init_i2c" },
	{ 0x6a7e0f81, "devm_gpiod_get_optional" },
	{ 0x92c04bf, "of_find_property" },
	{ 0xe2d5255a, "strcmp" },
	{ 0xc52a077f, "of_property_read_string" },
	{ 0x5f754e5a, "memset" },
	{ 0xb81e7f68, "devm_kmalloc" },
	{ 0xa0fe0a64, "of_property_read_variable_u32_array" },
	{ 0x9d669763, "memcpy" },
	{ 0x45eb4516, "i2c_transfer" },
	{ 0xf9a482f9, "msleep" },
	{ 0x49970de8, "finish_wait" },
	{ 0x8ddd8aad, "schedule_timeout" },
	{ 0x647af474, "prepare_to_wait_event" },
	{ 0xfe487975, "init_wait_entry" },
	{ 0x37a0cba, "kfree" },
	{ 0xab4e4895, "i2c_unregister_device" },
	{ 0x5d219875, "regcache_sync" },
	{ 0xa991bbbe, "regcache_mark_dirty" },
	{ 0x3dcf1ffa, "__wake_up" },
	{ 0xdecd0b29, "__stack_chk_fail" },
	{ 0xf9f2ee4a, "drm_helper_hpd_irq_event" },
	{ 0x55628b8c, "regmap_read" },
	{ 0x8f678b07, "__stack_chk_guard" },
	{ 0xa6e27f72, "regmap_update_bits_base" },
	{ 0x64f1517d, "regmap_write" },
	{ 0xefd6cf06, "__aeabi_unwind_cpp_pr0" },
};

MODULE_INFO(depends, "");

MODULE_ALIAS("of:N*T*Cadi,adv7511");
MODULE_ALIAS("of:N*T*Cadi,adv7511C*");
MODULE_ALIAS("of:N*T*Cadi,adv7511w");
MODULE_ALIAS("of:N*T*Cadi,adv7511wC*");
MODULE_ALIAS("of:N*T*Cadi,adv7513");
MODULE_ALIAS("of:N*T*Cadi,adv7513C*");
MODULE_ALIAS("i2c:fb0");
MODULE_ALIAS("i2c:adv7511w");
MODULE_ALIAS("i2c:adv7513");
