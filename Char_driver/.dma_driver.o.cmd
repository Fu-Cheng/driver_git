cmd_/home/fu-cheng/Desktop/driver_git/Char_driver/dma_driver.o := arm-linux-gnueabihf-gcc -Wp,-MD,/home/fu-cheng/Desktop/driver_git/Char_driver/.dma_driver.o.d  -nostdinc -isystem /tools/Xilinx/Vitis/2020.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/x86_64-petalinux-linux/usr/bin/arm-xilinx-linux-gnueabi/../../lib/arm-xilinx-linux-gnueabi/gcc/arm-xilinx-linux-gnueabi/9.2.0/include -I/home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include -I./arch/arm/include/generated -I/home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include -I./include -I/home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/uapi -I./arch/arm/include/generated/uapi -I/home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi -I./include/generated/uapi -include /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/kconfig.h -include /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/compiler_types.h -D__KERNEL__ -mlittle-endian -Wall -Wundef -Werror=strict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE -Werror=implicit-function-declaration -Werror=implicit-int -Wno-format-security -std=gnu89 -fno-dwarf2-cfi-asm -fno-ipa-sra -mabi=aapcs-linux -mfpu=vfp -funwind-tables -marm -Wa,-mno-warn-deprecated -D__LINUX_ARM_ARCH__=7 -march=armv7-a -msoft-float -Uarm -fno-delete-null-pointer-checks -Wno-frame-address -Wno-format-truncation -Wno-format-overflow -Wno-address-of-packed-member -Os -Wno-maybe-uninitialized --param=allow-store-data-races=0 -Wframe-larger-than=1024 -fstack-protector-strong -Wno-unused-but-set-variable -Wimplicit-fallthrough -Wno-unused-const-variable -fomit-frame-pointer -fno-var-tracking-assignments -Wdeclaration-after-statement -Wvla -Wno-pointer-sign -Wno-stringop-truncation -fno-strict-overflow -fno-merge-all-constants -fmerge-constants -fno-stack-check -fconserve-stack -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -fmacro-prefix-map=/home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/= -Wno-packed-not-aligned  -DMODULE  -DKBUILD_BASENAME='"dma_driver"' -DKBUILD_MODNAME='"dma_driver"' -c -o /home/fu-cheng/Desktop/driver_git/Char_driver/dma_driver.o /home/fu-cheng/Desktop/driver_git/Char_driver/dma_driver.c

source_/home/fu-cheng/Desktop/driver_git/Char_driver/dma_driver.o := /home/fu-cheng/Desktop/driver_git/Char_driver/dma_driver.c

deps_/home/fu-cheng/Desktop/driver_git/Char_driver/dma_driver.o := \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/kconfig.h \
    $(wildcard include/config/cpu/big/endian.h) \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/optimize/inlining.h) \
    $(wildcard include/config/cc/has/asm/inline.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/compiler_attributes.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/compiler-gcc.h \
    $(wildcard include/config/retpoline.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/module.h \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/sysfs.h) \
    $(wildcard include/config/modules/tree/lookup.h) \
    $(wildcard include/config/livepatch.h) \
    $(wildcard include/config/unused/symbols.h) \
    $(wildcard include/config/module/sig.h) \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/smp.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/tree/srcu.h) \
    $(wildcard include/config/bpf/events.h) \
    $(wildcard include/config/jump/label.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/function/error/injection.h) \
    $(wildcard include/config/strict/module/rwx.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/types.h \
    $(wildcard include/config/have/uid16.h) \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/types.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/uapi/asm/types.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/int-ll64.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/asm-generic/int-ll64.h \
  arch/arm/include/generated/uapi/asm/bitsperlong.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/bitsperlong.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/asm-generic/bitsperlong.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/posix_types.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/stddef.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/stddef.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/compiler_types.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/uapi/asm/posix_types.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/asm-generic/posix_types.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
    $(wildcard include/config/page/poisoning/zero.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/const.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/const.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/kernel.h \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/arch/has/refcount.h) \
    $(wildcard include/config/panic/timeout.h) \
  /tools/Xilinx/Vitis/2020.1/gnu/aarch32/lin/gcc-arm-linux-gnueabi/x86_64-petalinux-linux/usr/lib/arm-xilinx-linux-gnueabi/gcc/arm-xilinx-linux-gnueabi/9.2.0/include/stdarg.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/limits.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/limits.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/linkage.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/stringify.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/export.h \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/module/rel/crcs.h) \
    $(wildcard include/config/have/arch/prel32/relocations.h) \
    $(wildcard include/config/trim/unused/ksyms.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/linkage.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/kasan.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arm/heavy/mb.h) \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
    $(wildcard include/config/cpu/spectre.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/barrier.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/kasan-checks.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/bitops.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/bits.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/bitops.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/typecheck.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/irqflags.h \
    $(wildcard include/config/cpu/v7m.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/arm/thumb.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/uapi/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/hwcap.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/uapi/asm/hwcap.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/irqflags.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/bitops/non-atomic.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/bitops/builtin-__fls.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/bitops/builtin-__ffs.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/bitops/builtin-fls.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/bitops/builtin-ffs.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/bitops/ffz.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/bitops/fls64.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/bitops/sched.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/bitops/hweight.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/bitops/arch_hweight.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/bitops/const_hweight.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/bitops/lock.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/atomic.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/atomic.h \
    $(wildcard include/config/generic/atomic64.h) \
    $(wildcard include/config/arm/lpae.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/prefetch.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/processor.h \
    $(wildcard include/config/have/hw/breakpoint.h) \
    $(wildcard include/config/binfmt/elf/fdpic.h) \
    $(wildcard include/config/arm/errata/754327.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/hw_breakpoint.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/unified.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/cache.h \
    $(wildcard include/config/arm/l1/cache/shift.h) \
    $(wildcard include/config/aeabi.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/v6.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/cmpxchg-local.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/atomic-fallback.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/atomic-long.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/bitops/find.h \
    $(wildcard include/config/generic/find/first/bit.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/bitops/le.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/uapi/asm/byteorder.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/byteorder/little_endian.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/byteorder/little_endian.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/swab.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/swab.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/swab.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/uapi/asm/swab.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/byteorder/generic.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/printk.h \
    $(wildcard include/config/message/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/default.h) \
    $(wildcard include/config/console/loglevel/quiet.h) \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk/nmi.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/init.h \
    $(wildcard include/config/strict/kernel/rwx.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/kern_levels.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/kernel.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/sysinfo.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/build_bug.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/div64.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/compiler.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/div64.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/stat.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/uapi/asm/stat.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/stat.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/seqlock.h \
    $(wildcard include/config/debug/lock/alloc.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/preemption.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/preempt.h \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/trace/preempt/toggle.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  arch/arm/include/generated/asm/preempt.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/preempt.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/thread_info.h \
    $(wildcard include/config/thread/info/in/task.h) \
    $(wildcard include/config/have/arch/within/stack/frames.h) \
    $(wildcard include/config/hardened/usercopy.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/bug.h \
    $(wildcard include/config/bug/on/data/corruption.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/bug.h \
    $(wildcard include/config/debug/bugverbose.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/opcodes.h \
    $(wildcard include/config/cpu/endian/be32.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/restart_block.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/time64.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/math64.h \
    $(wildcard include/config/arch/supports/int128.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/time.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/time_types.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/stackprotector/per/task.h) \
    $(wildcard include/config/crunch.h) \
    $(wildcard include/config/arm/thumbee.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/page.h \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/xscale.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
    $(wildcard include/config/kuser/helpers.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/glue.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/pgtable-2level-types.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/xip/kernel.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
    $(wildcard include/config/xip/phys/addr.h) \
    $(wildcard include/config/debug/virtual.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/sizes.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/pfn.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/getorder.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/bottom_half.h \
  arch/arm/include/generated/asm/mmiowb.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/mmiowb.h \
    $(wildcard include/config/mmiowb.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/spinlock_types.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/spinlock_types.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/lockdep.h \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/lock/stat.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/rwlock_types.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/spinlock.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/rwlock.h \
    $(wildcard include/config/preempt.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/uninline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
    $(wildcard include/config/generic/lockbreak.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/time32.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/timex.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/timex.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/param.h \
  arch/arm/include/generated/uapi/asm/param.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/asm-generic/param.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/timex.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/uidgid.h \
    $(wildcard include/config/multiuser.h) \
    $(wildcard include/config/user/ns.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/highuid.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/kmod.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/umh.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/gfp.h \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/zone/device.h) \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/contig/alloc.h) \
    $(wildcard include/config/cma.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/vm/pgflags.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/shuffle/page/allocator.h) \
    $(wildcard include/config/zsmalloc.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/page/extension.h) \
    $(wildcard include/config/deferred/struct/page/init.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/wait.h \
  arch/arm/include/generated/asm/current.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/current.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/wait.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/nodemask.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/bitmap.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
    $(wildcard include/config/fortify/source.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/string.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/string.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/page-flags-layout.h \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/kasan/sw/tags.h) \
  include/generated/bounds.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/mm_types.h \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/userfaultfd.h) \
    $(wildcard include/config/swap.h) \
    $(wildcard include/config/have/arch/compat/mmap/bases.h) \
    $(wildcard include/config/membarrier.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mmu/notifier.h) \
    $(wildcard include/config/arch/want/batched/unmap/tlb/flush.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/mm_types_task.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/arch/enable/split/pmd/ptlock.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/auxvec.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/auxvec.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/auxvec.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/uapi/asm/auxvec.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/rbtree.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/rcupdate.h \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/stall/common.h) \
    $(wildcard include/config/no/hz/full.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
    $(wildcard include/config/tasks/rcu.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/prove/rcu.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/arch/weak/release/acquire.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/rcutree.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/rwsem.h \
    $(wildcard include/config/rwsem/spin/on/owner.h) \
    $(wildcard include/config/debug/rwsems.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/err.h \
  arch/arm/include/generated/uapi/asm/errno.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/asm-generic/errno.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/asm-generic/errno-base.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/osq_lock.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/completion.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/uprobes.h \
    $(wildcard include/config/uprobes.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/errno.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/errno.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
    $(wildcard include/config/wq/watchdog.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/timer.h \
    $(wildcard include/config/debug/objects/timers.h) \
    $(wildcard include/config/preempt/rt.h) \
    $(wildcard include/config/no/hz/common.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/ktime.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/jiffies.h \
  include/generated/timeconst.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/timekeeping.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/timekeeping32.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/mmu.h \
    $(wildcard include/config/cpu/has/asid.h) \
    $(wildcard include/config/vdso.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/page-flags.h \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/idle/page/tracking.h) \
    $(wildcard include/config/thp/swap.h) \
    $(wildcard include/config/ksm.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/memory_hotplug.h \
    $(wildcard include/config/arch/has/add/pages.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/notifier.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/mutex.h \
    $(wildcard include/config/mutex/spin/on/owner.h) \
    $(wildcard include/config/debug/mutexes.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/srcu.h \
    $(wildcard include/config/tiny/srcu.h) \
    $(wildcard include/config/srcu.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/rcu_segcblist.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/srcutree.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/rcu_node_tree.h \
    $(wildcard include/config/rcu/fanout.h) \
    $(wildcard include/config/rcu/fanout/leaf.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/topology.h \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
    $(wildcard include/config/sched/smt.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/arch_topology.h \
    $(wildcard include/config/generic/arch/topology.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/smp.h \
    $(wildcard include/config/up/late/init.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/smp.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/percpu.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/percpu.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
    $(wildcard include/config/virtualization.h) \
    $(wildcard include/config/amd/mem/encrypt.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/topology.h \
    $(wildcard include/config/arm/cpu/topology.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/topology.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/sysctl.h \
    $(wildcard include/config/sysctl.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/sysctl.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/elf.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/elf.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/vdso_datapage.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/user.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/elf.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/elf-em.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/kobject.h \
    $(wildcard include/config/uevent/helper.h) \
    $(wildcard include/config/debug/kobject/release.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/sysfs.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/kernfs.h \
    $(wildcard include/config/kernfs.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/idr.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/radix-tree.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/xarray.h \
    $(wildcard include/config/xarray/multi.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/kconfig.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/kobject_ns.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/kref.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/refcount.h \
    $(wildcard include/config/refcount/full.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/ppc64.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/jump_label.h \
    $(wildcard include/config/have/arch/jump/label/relative.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/rbtree_latch.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/error-injection.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/error-injection.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/tracepoint-defs.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/static_key.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/module.h \
    $(wildcard include/config/arm/unwind.h) \
    $(wildcard include/config/arm/module/plts.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/module.h \
    $(wildcard include/config/have/mod/arch/specific.h) \
    $(wildcard include/config/modules/use/elf/rel.h) \
    $(wildcard include/config/modules/use/elf/rela.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/pci.h \
    $(wildcard include/config/pci/iov.h) \
    $(wildcard include/config/pcieaer.h) \
    $(wildcard include/config/pcieaspm.h) \
    $(wildcard include/config/hotplug/pci/pcie.h) \
    $(wildcard include/config/pcie/ptm.h) \
    $(wildcard include/config/pci/msi.h) \
    $(wildcard include/config/pci/ats.h) \
    $(wildcard include/config/pci/pri.h) \
    $(wildcard include/config/pci/pasid.h) \
    $(wildcard include/config/pci/p2pdma.h) \
    $(wildcard include/config/pci/domains/generic.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/pcieportbus.h) \
    $(wildcard include/config/pci/domains.h) \
    $(wildcard include/config/acpi.h) \
    $(wildcard include/config/pci/quirks.h) \
    $(wildcard include/config/hibernate/callbacks.h) \
    $(wildcard include/config/pci/mmconfig.h) \
    $(wildcard include/config/acpi/mcfg.h) \
    $(wildcard include/config/hotplug/pci.h) \
    $(wildcard include/config/of.h) \
    $(wildcard include/config/eeh.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/mod_devicetable.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/uuid.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/uuid.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/ioport.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/generic/msi/irq/domain.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/generic/msi/irq.h) \
    $(wildcard include/config/dma/declare/coherent.h) \
    $(wildcard include/config/dma/cma.h) \
    $(wildcard include/config/arch/has/sync/dma/for/device.h) \
    $(wildcard include/config/arch/has/sync/dma/for/cpu.h) \
    $(wildcard include/config/arch/has/sync/dma/for/cpu/all.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/klist.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/pm.h \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/pm.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/time/low/res.h) \
    $(wildcard include/config/timerfd.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/hrtimer_defs.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/timerqueue.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/ratelimit.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/sched.h \
    $(wildcard include/config/virt/cpu/accounting/native.h) \
    $(wildcard include/config/sched/info.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/uclamp/task.h) \
    $(wildcard include/config/uclamp/buckets/count.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/psi.h) \
    $(wildcard include/config/compat/brk.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/stackprotector.h) \
    $(wildcard include/config/arch/has/scaled/cputime.h) \
    $(wildcard include/config/virt/cpu/accounting/gen.h) \
    $(wildcard include/config/posix/cputimers.h) \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/audit.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/ubsan.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/x86/cpu/resctrl.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/rseq.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/kcov.h) \
    $(wildcard include/config/bcache.h) \
    $(wildcard include/config/vmap/stack.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/gcc/plugin/stackleak.h) \
    $(wildcard include/config/arch/task/struct/on/stack.h) \
    $(wildcard include/config/debug/rseq.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/sched.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/pid.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/rculist.h \
    $(wildcard include/config/prove/rcu/list.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/sem.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/sem.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/ipc.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/rhashtable-types.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/ipc.h \
  arch/arm/include/generated/uapi/asm/ipcbuf.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/asm-generic/ipcbuf.h \
  arch/arm/include/generated/uapi/asm/sembuf.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/asm-generic/sembuf.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/shm.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/shm.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/asm-generic/hugetlb_encode.h \
  arch/arm/include/generated/uapi/asm/shmbuf.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/asm-generic/shmbuf.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/shmparam.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/kcov.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/kcov.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/plist.h \
    $(wildcard include/config/debug/plist.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
    $(wildcard include/config/have/arch/seccomp/filter.h) \
    $(wildcard include/config/seccomp/filter.h) \
    $(wildcard include/config/checkpoint/restore.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/seccomp.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/resource.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/resource.h \
  arch/arm/include/generated/uapi/asm/resource.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/resource.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/asm-generic/resource.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/latencytop.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/sched/prio.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/sched/types.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/signal_types.h \
    $(wildcard include/config/old/sigaction.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/signal.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/signal.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/uapi/asm/signal.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/asm-generic/signal-defs.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/uapi/asm/sigcontext.h \
  arch/arm/include/generated/uapi/asm/siginfo.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/asm-generic/siginfo.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/posix-timers.h \
    $(wildcard include/config/posix/timers.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/alarmtimer.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/rseq.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/overflow.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/device.h \
    $(wildcard include/config/dmabounce.h) \
    $(wildcard include/config/iommu/api.h) \
    $(wildcard include/config/arm/dma/use/iommu.h) \
    $(wildcard include/config/arch/omap.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/pm_wakeup.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/interrupt.h \
    $(wildcard include/config/irq/forced/threading.h) \
    $(wildcard include/config/generic/irq/probe.h) \
    $(wildcard include/config/proc/fs.h) \
    $(wildcard include/config/irq/timings.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/irqreturn.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/irqnr.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/irqnr.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/hardirq.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/ftrace_irq.h \
    $(wildcard include/config/ftrace/nmi/enter.h) \
    $(wildcard include/config/hwlat/tracer.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/vtime.h \
    $(wildcard include/config/virt/cpu/accounting.h) \
    $(wildcard include/config/irq/time/accounting.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/context_tracking_state.h \
    $(wildcard include/config/context/tracking.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/hardirq.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/irq.h \
    $(wildcard include/config/sparse/irq.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/irq_cpustat.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/sections.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/sections.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/io.h \
    $(wildcard include/config/have/arch/huge/vmap.h) \
    $(wildcard include/config/has/ioport/map.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/io.h \
    $(wildcard include/config/need/mach/io/h.h) \
    $(wildcard include/config/pcmcia/soc/common.h) \
    $(wildcard include/config/isa.h) \
    $(wildcard include/config/pccard.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/io.h \
    $(wildcard include/config/generic/iomap.h) \
    $(wildcard include/config/virt/to/bus.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/logic_pio.h \
    $(wildcard include/config/indirect/pio.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/fwnode.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/vmalloc.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/resource_ext.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/slab.h \
    $(wildcard include/config/debug/slab.h) \
    $(wildcard include/config/failslab.h) \
    $(wildcard include/config/memcg/kmem.h) \
    $(wildcard include/config/have/hardened/usercopy/allocator.h) \
    $(wildcard include/config/slab.h) \
    $(wildcard include/config/slub.h) \
    $(wildcard include/config/slob.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/percpu-refcount.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/kasan.h \
    $(wildcard include/config/kasan/generic.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/pci.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/pci_regs.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/pci_ids.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/dmapool.h \
    $(wildcard include/config/has/dma.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/scatterlist.h \
    $(wildcard include/config/need/sg/dma/length.h) \
    $(wildcard include/config/debug/sg.h) \
    $(wildcard include/config/sgl/alloc.h) \
    $(wildcard include/config/arch/no/sg/chain.h) \
    $(wildcard include/config/sg/pool.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/mm.h \
    $(wildcard include/config/have/arch/mmap/rnd/bits.h) \
    $(wildcard include/config/have/arch/mmap/rnd/compat/bits.h) \
    $(wildcard include/config/mem/soft/dirty.h) \
    $(wildcard include/config/arch/uses/high/vma/flags.h) \
    $(wildcard include/config/arch/has/pkeys.h) \
    $(wildcard include/config/ppc.h) \
    $(wildcard include/config/x86.h) \
    $(wildcard include/config/parisc.h) \
    $(wildcard include/config/sparc64.h) \
    $(wildcard include/config/x86/intel/mpx.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/shmem.h) \
    $(wildcard include/config/arch/has/pte/devmap.h) \
    $(wildcard include/config/dev/pagemap/ops.h) \
    $(wildcard include/config/device/private.h) \
    $(wildcard include/config/debug/vm/rb.h) \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/init/on/alloc/default/on.h) \
    $(wildcard include/config/init/on/free/default/on.h) \
    $(wildcard include/config/debug/pagealloc/enable/default.h) \
    $(wildcard include/config/debug/pagealloc.h) \
    $(wildcard include/config/arch/has/set/direct/map.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/hugetlbfs.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/range.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/bit_spinlock.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/shrinker.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/page_ext.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/stacktrace.h \
    $(wildcard include/config/stacktrace.h) \
    $(wildcard include/config/arch/stackwalk.h) \
    $(wildcard include/config/have/reliable/stacktrace.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/stackdepot.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/page_ref.h \
    $(wildcard include/config/debug/page/ref.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/memremap.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/pgtable.h \
    $(wildcard include/config/highpte.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/proc-fns.h \
    $(wildcard include/config/big/little.h) \
    $(wildcard include/config/harden/branch/predictor.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/glue-proc.h \
    $(wildcard include/config/cpu/arm7tdmi.h) \
    $(wildcard include/config/cpu/arm720t.h) \
    $(wildcard include/config/cpu/arm740t.h) \
    $(wildcard include/config/cpu/arm9tdmi.h) \
    $(wildcard include/config/cpu/arm920t.h) \
    $(wildcard include/config/cpu/arm922t.h) \
    $(wildcard include/config/cpu/arm925t.h) \
    $(wildcard include/config/cpu/arm926t.h) \
    $(wildcard include/config/cpu/arm940t.h) \
    $(wildcard include/config/cpu/arm946e.h) \
    $(wildcard include/config/cpu/arm1020.h) \
    $(wildcard include/config/cpu/arm1020e.h) \
    $(wildcard include/config/cpu/arm1022.h) \
    $(wildcard include/config/cpu/arm1026.h) \
    $(wildcard include/config/cpu/mohawk.h) \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/cpu/v6k.h) \
    $(wildcard include/config/cpu/pj4b.h) \
    $(wildcard include/config/cpu/v7.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/pgtable-nopud.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/pgtable-nop4d-hack.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/5level-fixup.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/pgtable-hwdef.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/pgtable-2level-hwdef.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/tlbflush.h \
    $(wildcard include/config/smp/on/up.h) \
    $(wildcard include/config/cpu/tlb/v4wt.h) \
    $(wildcard include/config/cpu/tlb/fa.h) \
    $(wildcard include/config/cpu/tlb/v4wbi.h) \
    $(wildcard include/config/cpu/tlb/feroceon.h) \
    $(wildcard include/config/cpu/tlb/v4wb.h) \
    $(wildcard include/config/cpu/tlb/v6.h) \
    $(wildcard include/config/cpu/tlb/v7.h) \
    $(wildcard include/config/arm/errata/720789.h) \
    $(wildcard include/config/arm/errata/798181.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/pgtable-2level.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/pgtable.h \
    $(wildcard include/config/pgtable/levels.h) \
    $(wildcard include/config/have/arch/transparent/hugepage/pud.h) \
    $(wildcard include/config/have/arch/soft/dirty.h) \
    $(wildcard include/config/arch/enable/thp/migration.h) \
    $(wildcard include/config/x86/espfix64.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/huge_mm.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/sched/coredump.h \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/fs.h \
    $(wildcard include/config/read/only/thp/for/fs.h) \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/cgroup/writeback.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/fs/encryption.h) \
    $(wildcard include/config/fs/verity.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fs/dax.h) \
    $(wildcard include/config/mandatory/file/locking.h) \
    $(wildcard include/config/migration.h) \
    $(wildcard include/config/io/uring.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/wait_bit.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/kdev_t.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/kdev_t.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/dcache.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/rculist_bl.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/list_bl.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/lockref.h \
    $(wildcard include/config/arch/use/cmpxchg/lockref.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/stringhash.h \
    $(wildcard include/config/dcache/word/access.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/hash.h \
    $(wildcard include/config/have/arch/hash.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/path.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/list_lru.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/capability.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/capability.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/semaphore.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/fcntl.h \
    $(wildcard include/config/arch/32bit/off/t.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/fcntl.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/uapi/asm/fcntl.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/asm-generic/fcntl.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/fiemap.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/migrate_mode.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/percpu-rwsem.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/rcuwait.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/rcu_sync.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/delayed_call.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/errseq.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/ioprio.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/sched/rt.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/iocontext.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/fs_types.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/fs.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/ioctl.h \
  arch/arm/include/generated/uapi/asm/ioctl.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/asm-generic/ioctl.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/asm-generic/ioctl.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/percpu_counter.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/dqblk_xfs.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/dqblk_v1.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/dqblk_v2.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/dqblk_qtree.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/projid.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/uapi/linux/quota.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/nfs_fs_i.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
    $(wildcard include/config/debug/tlbflush.h) \
    $(wildcard include/config/debug/vm/vmacache.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/vm_event_item.h \
    $(wildcard include/config/memory/balloon.h) \
    $(wildcard include/config/balloon/compaction.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/pci.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/mach/pci.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/pci-dma-compat.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/dma-mapping.h \
    $(wildcard include/config/swiotlb.h) \
    $(wildcard include/config/arch/has/setup/dma/ops.h) \
    $(wildcard include/config/arch/has/teardown/dma/ops.h) \
    $(wildcard include/config/need/dma/map/state.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/dma-debug.h \
    $(wildcard include/config/dma/api/debug.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/dma-direction.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/linux/mem_encrypt.h \
    $(wildcard include/config/arch/has/mem/encrypt.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/dma-mapping.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/xen/xen.h \
    $(wildcard include/config/xen.h) \
    $(wildcard include/config/xen/pvh.h) \
    $(wildcard include/config/xen/dom0.h) \
    $(wildcard include/config/xen/balloon.h) \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/xen/interface/hvm/start_info.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/arch/arm/include/asm/xen/hypervisor.h \
  /home/fu-cheng/Desktop/PetaLinux2020/project_driver/components/yocto/workspace/sources/linux-xlnx/include/xen/arm/hypervisor.h \

/home/fu-cheng/Desktop/driver_git/Char_driver/dma_driver.o: $(deps_/home/fu-cheng/Desktop/driver_git/Char_driver/dma_driver.o)

$(deps_/home/fu-cheng/Desktop/driver_git/Char_driver/dma_driver.o):
