cmd_scripts/mod/devicetable-offsets.s := gcc -Wp,-MD,scripts/mod/.devicetable-offsets.s.d  -nostdinc -isystem /usr/lib/gcc/x86_64-linux-gnu/4.8/include -I/usr/src/linux-headers-lbm-3.13.0-163-generic -I/build/linux-B7xu_C/linux-3.13.0/arch/x86/include -Iarch/x86/include/generated  -I/build/linux-B7xu_C/linux-3.13.0/include -Iinclude -I/build/linux-B7xu_C/linux-3.13.0/arch/x86/include/uapi -Iarch/x86/include/generated/uapi -I/build/linux-B7xu_C/linux-3.13.0/include/uapi -Iinclude/generated/uapi -include /build/linux-B7xu_C/linux-3.13.0/include/linux/kconfig.h -Iubuntu/include -I/build/linux-B7xu_C/linux-3.13.0/ubuntu/include  -I/build/linux-B7xu_C/linux-3.13.0/scripts/mod -Iscripts/mod -D__KERNEL__ -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -std=gnu89 -O2 -m64 -mno-mmx -mno-sse -mpreferred-stack-boundary=3 -mtune=generic -mno-red-zone -mcmodel=kernel -funit-at-a-time -maccumulate-outgoing-args -DCONFIG_X86_X32_ABI -DCONFIG_AS_CFI=1 -DCONFIG_AS_CFI_SIGNAL_FRAME=1 -DCONFIG_AS_CFI_SECTIONS=1 -DCONFIG_AS_FXSAVEQ=1 -DCONFIG_AS_AVX=1 -DCONFIG_AS_AVX2=1 -pipe -Wno-sign-compare -fno-asynchronous-unwind-tables -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -mindirect-branch=thunk-extern -mindirect-branch-register -DRETPOLINE -Wframe-larger-than=1024 -fstack-protector -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-var-tracking-assignments -pg -mfentry -DCC_USING_FENTRY -fno-inline-functions-called-once -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -Werror=implicit-int -Werror=strict-prototypes -DCC_HAVE_ASM_GOTO    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(devicetable_offsets)"  -D"KBUILD_MODNAME=KBUILD_STR(devicetable_offsets)" -fverbose-asm -S -o scripts/mod/devicetable-offsets.s /build/linux-B7xu_C/linux-3.13.0/scripts/mod/devicetable-offsets.c

source_scripts/mod/devicetable-offsets.s := /build/linux-B7xu_C/linux-3.13.0/scripts/mod/devicetable-offsets.c

deps_scripts/mod/devicetable-offsets.s := \
  /build/linux-B7xu_C/linux-3.13.0/include/linux/kbuild.h \
  /build/linux-B7xu_C/linux-3.13.0/include/linux/mod_devicetable.h \
  /build/linux-B7xu_C/linux-3.13.0/include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  /build/linux-B7xu_C/linux-3.13.0/include/uapi/linux/types.h \
  /build/linux-B7xu_C/linux-3.13.0/arch/x86/include/uapi/asm/types.h \
  /build/linux-B7xu_C/linux-3.13.0/include/uapi/asm-generic/types.h \
  /build/linux-B7xu_C/linux-3.13.0/include/asm-generic/int-ll64.h \
  /build/linux-B7xu_C/linux-3.13.0/include/uapi/asm-generic/int-ll64.h \
  /build/linux-B7xu_C/linux-3.13.0/arch/x86/include/uapi/asm/bitsperlong.h \
  /build/linux-B7xu_C/linux-3.13.0/include/asm-generic/bitsperlong.h \
  /build/linux-B7xu_C/linux-3.13.0/include/uapi/asm-generic/bitsperlong.h \
  /build/linux-B7xu_C/linux-3.13.0/include/uapi/linux/posix_types.h \
  /build/linux-B7xu_C/linux-3.13.0/include/linux/stddef.h \
  /build/linux-B7xu_C/linux-3.13.0/include/uapi/linux/stddef.h \
  /build/linux-B7xu_C/linux-3.13.0/include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  /build/linux-B7xu_C/linux-3.13.0/include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  /build/linux-B7xu_C/linux-3.13.0/include/linux/compiler-gcc4.h \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  /build/linux-B7xu_C/linux-3.13.0/arch/x86/include/asm/posix_types.h \
    $(wildcard include/config/x86/32.h) \
  /build/linux-B7xu_C/linux-3.13.0/arch/x86/include/uapi/asm/posix_types_64.h \
  /build/linux-B7xu_C/linux-3.13.0/include/uapi/asm-generic/posix_types.h \
  /build/linux-B7xu_C/linux-3.13.0/include/linux/uuid.h \
  /build/linux-B7xu_C/linux-3.13.0/include/uapi/linux/uuid.h \
  /build/linux-B7xu_C/linux-3.13.0/include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  /usr/lib/gcc/x86_64-linux-gnu/4.8/include/stdarg.h \
  /build/linux-B7xu_C/linux-3.13.0/include/uapi/linux/string.h \
  /build/linux-B7xu_C/linux-3.13.0/arch/x86/include/asm/string.h \
  /build/linux-B7xu_C/linux-3.13.0/arch/x86/include/asm/string_64.h \
    $(wildcard include/config/kmemcheck.h) \

scripts/mod/devicetable-offsets.s: $(deps_scripts/mod/devicetable-offsets.s)

$(deps_scripts/mod/devicetable-offsets.s):