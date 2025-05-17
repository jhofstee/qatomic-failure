	.cpu cortex-a8
	.arch armv7-a
	.fpu neon
	.arch_extension sec
	.eabi_attribute 28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 2	@ Tag_ABI_enum_size
	.eabi_attribute 30, 2	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 4	@ Tag_ABI_PCS_wchar_t
	.file	"reduced.cpp"
@ GNU C++17 (GCC) version 15.1.0 (arm-oe-linux-gnueabi)
@	compiled by GNU C version 15.1.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version none
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mfpu=neon -mfloat-abi=hard -mcpu=cortex-a8 -mlittle-endian -mtls-dialect=gnu -marm -march=armv7-a+sec+simd -g -O2 -std=c++17 -ffunction-sections
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "../reduced.cpp"
	.section	.text._Z7testingv,"ax",%progbits
	.align	2
	.global	_Z7testingv
	.syntax unified
	.arm
	.type	_Z7testingv, %function
_Z7testingv:
	.fnstart
.LFB5:
	.loc 1 20 16 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 21 3 view .LVU1
@ ../reduced.cpp:20: void testing() {
	.loc 1 20 16 is_stmt 0 view .LVU2
	str	lr, [sp, #-4]!	@,
	.save {lr}
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	.pad #28
	sub	sp, sp, #28	@,,
	.cfi_def_cfa_offset 32
@ ../reduced.cpp:21:   B test;
	.loc 1 21 5 view .LVU3
	add	r0, sp, #16	@ tmp126,,
	bl	_ZN1BC1Ev		@
.LVL0:
	.loc 1 22 3 is_stmt 1 view .LVU4
.LBB17:
.LBI17:
	.loc 1 9 10 view .LVU5
.LBB18:
	.loc 1 10 9 view .LVU6
@ ../reduced.cpp:10:         B dummy;
	.loc 1 10 11 is_stmt 0 view .LVU7
	mov	r0, sp	@,
	bl	_ZN1BC1Ev		@
.LVL1:
	.loc 1 11 9 is_stmt 1 view .LVU8
.LBB19:
.LBI19:
	.loc 1 13 5 view .LVU9
.LBB20:
.LBB21:
@ ../reduced.cpp:13:     B(B &other) : d(other.d), ptr(other.ptr) {
	.loc 1 13 27 is_stmt 0 view .LVU10
	vldr	d7, [sp]	@, MEM <vector(2) unsigned int> [(void *)&dummy]
@ ../reduced.cpp:13:     B(B &other) : d(other.d), ptr(other.ptr) {
	.loc 1 13 19 view .LVU11
	vstr	d7, [sp, #8]	@, MEM <vector(2) unsigned int> [(void *)&D.6228]
	.loc 1 14 9 is_stmt 1 view .LVU12
.LVL2:
.LBB22:
.LBI22:
	.loc 1 3 8 view .LVU13
.LBB23:
	.loc 1 3 15 view .LVU14
.L2:
@ ../reduced.cpp:3:   void ref() {__atomic_fetch_add(&_M_i, 1, 0); }
	.loc 1 3 33 is_stmt 0 view .LVU15
	ldrex	r1, [s14]	@ tmp123,* vect__5.8
	add	r1, r1, #1	@ tmp123, tmp123,
	strex	r2, r1, [s14]	@ tmp124, tmp123,* vect__5.8
	cmp	r2, #0	@ tmp124,
	bne	.L2		@,
.LVL3:
	.loc 1 3 33 view .LVU16
.LBE23:
.LBE22:
.LBE21:
.LBE20:
.LBE19:
@ ../reduced.cpp:11:         insertOne(dummy);
	.loc 1 11 18 discriminator 1 view .LVU17
	add	r1, sp, #8	@,,
	add	r0, sp, #16	@ tmp128,,
.LVL4:
	.loc 1 11 18 discriminator 1 view .LVU18
	bl	_ZN1B9insertOneES_		@
.LVL5:
	.loc 1 11 18 discriminator 1 view .LVU19
.LBE18:
.LBE17:
@ ../reduced.cpp:23: }
	.loc 1 23 1 view .LVU20
	add	sp, sp, #28	@,,
	.cfi_def_cfa_offset 4
	@ sp needed	@
	pop	{pc}	@
	.cfi_endproc
.LFE5:
	.fnend
	.size	_Z7testingv, .-_Z7testingv
	.text
.Letext0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x289
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x10
	.4byte	.LASF9
	.byte	0x21
	.byte	0x4
	.4byte	0x313e7
	.4byte	.LASF10
	.4byte	.LASF11
	.4byte	.LLRL4
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.ascii	"A\000"
	.byte	0x4
	.byte	0x1
	.4byte	0x58
	.uleb128 0x11
	.4byte	.LASF4
	.byte	0x1
	.byte	0x2
	.byte	0x7
	.4byte	0x58
	.byte	0
	.uleb128 0x12
	.ascii	"ref\000"
	.byte	0x1
	.byte	0x3
	.byte	0x8
	.4byte	.LASF12
	.4byte	0x51
	.uleb128 0x1
	.4byte	0x5f
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.4byte	0x2b
	.uleb128 0x7
	.4byte	0x5f
	.uleb128 0x6
	.ascii	"B\000"
	.byte	0x8
	.byte	0x6
	.4byte	0xfc
	.uleb128 0x14
	.ascii	"B\000"
	.byte	0x1
	.byte	0x7
	.byte	0x5
	.4byte	.LASF13
	.4byte	0xfc
	.4byte	0x89
	.byte	0
	.4byte	0x8f
	.uleb128 0x1
	.4byte	0xfc
	.byte	0
	.uleb128 0x8
	.4byte	.LASF0
	.byte	0x8
	.4byte	.LASF2
	.4byte	0xa1
	.4byte	0xac
	.uleb128 0x1
	.4byte	0xfc
	.uleb128 0x9
	.4byte	0x69
	.byte	0
	.uleb128 0x8
	.4byte	.LASF1
	.byte	0x9
	.4byte	.LASF3
	.4byte	0xbe
	.4byte	0xc4
	.uleb128 0x1
	.4byte	0xfc
	.byte	0
	.uleb128 0x15
	.ascii	"B\000"
	.byte	0x1
	.byte	0xd
	.byte	0x5
	.4byte	.LASF14
	.4byte	0xfc
	.4byte	0xda
	.4byte	0xe5
	.uleb128 0x1
	.4byte	0xfc
	.uleb128 0x9
	.4byte	0x106
	.byte	0
	.uleb128 0xa
	.ascii	"d\000"
	.byte	0x10
	.byte	0x8
	.4byte	0x5f
	.byte	0
	.uleb128 0xa
	.ascii	"ptr\000"
	.byte	0x11
	.byte	0xa
	.4byte	0x10c
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	0x69
	.uleb128 0x7
	.4byte	0xfc
	.uleb128 0x16
	.byte	0x4
	.4byte	0x69
	.uleb128 0x5
	.4byte	0x58
	.uleb128 0xb
	.4byte	0x72
	.4byte	.LASF7
	.4byte	0x122
	.4byte	0x12c
	.uleb128 0x2
	.4byte	.LASF6
	.4byte	0x101
	.byte	0
	.uleb128 0x17
	.4byte	.LASF5
	.byte	0x1
	.byte	0x14
	.byte	0x6
	.4byte	.LASF15
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x214
	.uleb128 0x18
	.4byte	.LASF16
	.byte	0x1
	.byte	0x15
	.byte	0x5
	.4byte	0x69
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0xc
	.4byte	0x254
	.4byte	.LBI17
	.byte	.LVU5
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0x16
	.byte	0xf
	.4byte	0x203
	.uleb128 0x3
	.4byte	0x262
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x19
	.4byte	0x26b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0xc
	.4byte	0x214
	.4byte	.LBI19
	.byte	.LVU9
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.byte	0xb
	.byte	0x12
	.4byte	0x1d8
	.uleb128 0x3
	.4byte	0x222
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x3
	.4byte	0x22b
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1a
	.4byte	0x278
	.4byte	.LBI22
	.byte	.LVU13
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x1
	.byte	0xe
	.byte	0xf
	.uleb128 0x3
	.4byte	0x282
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL1
	.4byte	0x111
	.4byte	0x1ec
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xd
	.4byte	.LVL5
	.4byte	0x8f
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	.LVL0
	.4byte	0x111
	.uleb128 0x4
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0xc4
	.4byte	0x222
	.byte	0x2
	.4byte	0x238
	.uleb128 0x2
	.4byte	.LASF6
	.4byte	0x101
	.uleb128 0x1c
	.4byte	.LASF17
	.byte	0x1
	.byte	0xd
	.byte	0xa
	.4byte	0x106
	.byte	0
	.uleb128 0xb
	.4byte	0x214
	.4byte	.LASF8
	.4byte	0x249
	.4byte	0x254
	.uleb128 0xf
	.4byte	0x222
	.uleb128 0xf
	.4byte	0x22b
	.byte	0
	.uleb128 0xe
	.4byte	0xac
	.4byte	0x262
	.byte	0x3
	.4byte	0x278
	.uleb128 0x2
	.4byte	.LASF6
	.4byte	0x101
	.uleb128 0x1d
	.4byte	.LASF18
	.byte	0x1
	.byte	0xa
	.byte	0xb
	.4byte	0x69
	.byte	0
	.uleb128 0x1e
	.4byte	0x41
	.4byte	0x282
	.byte	0x3
	.uleb128 0x2
	.4byte	.LASF6
	.4byte	0x64
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x90
	.uleb128 0xb
	.uleb128 0x91
	.uleb128 0x6
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x64
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",%progbits
	.4byte	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.Ldebug_loc0:
.LVUS0:
	.uleb128 .LVU5
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU19
.LLST0:
	.byte	0x6
	.4byte	.LVL0
	.byte	0x4
	.uleb128 .LVL0-.LVL0
	.uleb128 .LVL4-.LVL0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL4-.LVL0
	.uleb128 .LVL5-1-.LVL0
	.uleb128 0x1
	.byte	0x50
	.byte	0x4
	.uleb128 .LVL5-1-.LVL0
	.uleb128 .LVL5-.LVL0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x9f
	.byte	0
.LVUS1:
	.uleb128 .LVU9
	.uleb128 .LVU16
.LLST1:
	.byte	0x8
	.4byte	.LVL1
	.uleb128 .LVL3-.LVL1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x9f
	.byte	0
.LVUS2:
	.uleb128 .LVU9
	.uleb128 .LVU16
.LLST2:
	.byte	0x8
	.4byte	.LVL1
	.uleb128 .LVL3-.LVL1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.byte	0
.LVUS3:
	.uleb128 .LVU13
	.uleb128 .LVU16
.LLST3:
	.byte	0x8
	.4byte	.LVL2
	.uleb128 .LVL3-.LVL2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",%progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL4:
	.byte	0x7
	.4byte	.LFB5
	.uleb128 .LFE5-.LFB5
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF0:
	.ascii	"insertOne\000"
.LASF2:
	.ascii	"_ZN1B9insertOneES_\000"
.LASF4:
	.ascii	"_M_i\000"
.LASF1:
	.ascii	"emplace\000"
.LASF11:
	.ascii	"/home/jeroen/software/qatomic/build\000"
.LASF17:
	.ascii	"other\000"
.LASF5:
	.ascii	"testing\000"
.LASF15:
	.ascii	"_Z7testingv\000"
.LASF12:
	.ascii	"_ZN1A3refEv\000"
.LASF8:
	.ascii	"_ZN1BC2ERS_\000"
.LASF6:
	.ascii	"this\000"
.LASF3:
	.ascii	"_ZN1B7emplaceEv\000"
.LASF18:
	.ascii	"dummy\000"
.LASF7:
	.ascii	"_ZN1BC1Ev\000"
.LASF14:
	.ascii	"_ZN1BC4ERS_\000"
.LASF16:
	.ascii	"test\000"
.LASF9:
	.ascii	"GNU C++17 15.1.0 -mfpu=neon -mfloat-abi=hard -mcpu="
	.ascii	"cortex-a8 -mlittle-endian -mtls-dialect=gnu -marm -"
	.ascii	"march=armv7-a+sec+simd -g -O2 -std=c++17 -ffunction"
	.ascii	"-sections\000"
.LASF10:
	.ascii	"../reduced.cpp\000"
.LASF13:
	.ascii	"_ZN1BC4Ev\000"
	.ident	"GCC: (GNU) 15.1.0"
	.section	.note.GNU-stack,"",%progbits
