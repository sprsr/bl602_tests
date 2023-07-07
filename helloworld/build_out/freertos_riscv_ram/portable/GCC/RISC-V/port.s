	.file	"port.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.vPortSetupTimerInterrupt,"ax",@progbits
	.align	1
	.weak	vPortSetupTimerInterrupt
	.type	vPortSetupTimerInterrupt, @function
vPortSetupTimerInterrupt:
.LFB1:
	.file 1 "/home/sp/repos/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/port.c"
	.loc 1 111 5
	.cfi_startproc
	.loc 1 112 5
	.loc 1 113 5
.LVL0:
	.loc 1 114 5
	.loc 1 118 31 is_stmt 0
	li	a5,33603584
.L2:
	.loc 1 116 9 is_stmt 1 discriminator 1
	.loc 1 118 13 discriminator 1
	.loc 1 118 31 is_stmt 0 discriminator 1
	lw	a3,-4(a5)
.LVL1:
	.loc 1 119 13 is_stmt 1 discriminator 1
	.loc 1 119 30 is_stmt 0 discriminator 1
	lw	a2,-8(a5)
.LVL2:
	.loc 1 120 39 discriminator 1
	lw	a4,-4(a5)
	.loc 1 120 9 discriminator 1
	bne	a4,a3,.L2
	.loc 1 122 9 is_stmt 1
	.loc 1 123 9
	.loc 1 124 9
	.loc 1 125 9
	.loc 1 125 21 is_stmt 0
	li	a3,8192
.LVL3:
	addi	a3,a3,1808
	add	a3,a2,a3
	.loc 1 129 21
	li	a5,20480
	.loc 1 125 21
	sltu	a6,a3,a2
	mv	a0,a3
	.loc 1 129 21
	addi	a5,a5,-480
	.loc 1 126 42
	li	a3,33570816
	sw	a0,0(a3)
	.loc 1 129 21
	add	a5,a2,a5
	.loc 1 125 21
	add	a1,a6,a4
	.loc 1 126 9 is_stmt 1
	.loc 1 126 42 is_stmt 0
	sw	a1,4(a3)
	.loc 1 129 9 is_stmt 1
	.loc 1 129 21 is_stmt 0
	sltu	a2,a5,a2
.LVL4:
	lui	a3,%hi(.LANCHOR0)
	addi	a3,a3,%lo(.LANCHOR0)
	add	a4,a2,a4
	sw	a5,0(a3)
	sw	a4,4(a3)
	.loc 1 130 5
	ret
	.cfi_endproc
.LFE1:
	.size	vPortSetupTimerInterrupt, .-vPortSetupTimerInterrupt
	.section	.text.xPortStartScheduler,"ax",@progbits
	.align	1
	.globl	xPortStartScheduler
	.type	xPortStartScheduler, @function
xPortStartScheduler:
.LFB2:
	.loc 1 136 1 is_stmt 1
	.cfi_startproc
	.loc 1 137 1
.LBB2:
	.loc 1 141 9
.LBE2:
	.loc 1 136 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
.LBB3:
	.loc 1 141 27
	sw	zero,12(sp)
	.loc 1 145 9 is_stmt 1
 #APP
# 145 "/home/sp/repos/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/port.c" 1
	csrr a5, mtvec
# 0 "" 2
 #NO_APP
	sw	a5,12(sp)
	.loc 1 150 9
	.loc 1 150 30 is_stmt 0
	lui	a5,%hi(__freertos_irq_stack_top)
	addi	a5,a5,%lo(__freertos_irq_stack_top)
	andi	a5,a5,7
	.loc 1 150 11
	bne	a5,zero,.L11
.L6:
.LBE3:
	.loc 1 158 5 is_stmt 1
	call	vPortSetupTimerInterrupt
.LVL5:
	.loc 1 165 9
	li	a5,4096
	addi	a5,a5,-1920
 #APP
# 165 "/home/sp/repos/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/port.c" 1
	csrs mie, a5
# 0 "" 2
	.loc 1 182 5
	.loc 1 182 38 is_stmt 0
 #NO_APP
	li	a5,41943040
	li	a4,1
	sb	a4,1031(a5)
	.loc 1 184 5 is_stmt 1
	call	xPortStartFirstTask
.LVL6:
	.loc 1 188 5
	.loc 1 189 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L11:
	.cfi_restore_state
.LBB4:
	.loc 1 150 59 is_stmt 1 discriminator 1
	call	vAssertCalled
.LVL7:
	j	.L6
.LBE4:
	.cfi_endproc
.LFE2:
	.size	xPortStartScheduler, .-xPortStartScheduler
	.section	.text.vPortEndScheduler,"ax",@progbits
	.align	1
	.globl	vPortEndScheduler
	.type	vPortEndScheduler, @function
vPortEndScheduler:
.LFB3:
	.loc 1 193 1
	.cfi_startproc
.L13:
	.loc 1 195 5 discriminator 1
	.loc 1 195 14 discriminator 1
	j	.L13
	.cfi_endproc
.LFE3:
	.size	vPortEndScheduler, .-vPortEndScheduler
	.globl	pTrapNetCounter
	.globl	TrapNetCounter
	.globl	pullMachineTimerCompareRegister
	.globl	uxTimerIncrementsForOneTick
	.globl	pullNextTime
	.globl	ullNextTime
	.globl	xISRStackTop
	.section	.sbss.TrapNetCounter,"aw",@nobits
	.align	2
	.type	TrapNetCounter, @object
	.size	TrapNetCounter, 4
TrapNetCounter:
	.zero	4
	.section	.sbss.ullNextTime,"aw",@nobits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	ullNextTime, @object
	.size	ullNextTime, 8
ullNextTime:
	.zero	8
	.section	.sdata.pTrapNetCounter,"aw"
	.align	2
	.type	pTrapNetCounter, @object
	.size	pTrapNetCounter, 4
pTrapNetCounter:
	.word	TrapNetCounter
	.section	.sdata.pullNextTime,"aw"
	.align	2
	.type	pullNextTime, @object
	.size	pullNextTime, 4
pullNextTime:
	.word	ullNextTime
	.section	.sdata2.pullMachineTimerCompareRegister,"a"
	.align	2
	.type	pullMachineTimerCompareRegister, @object
	.size	pullMachineTimerCompareRegister, 4
pullMachineTimerCompareRegister:
	.word	33570816
	.section	.sdata2.uxTimerIncrementsForOneTick,"a"
	.align	2
	.type	uxTimerIncrementsForOneTick, @object
	.size	uxTimerIncrementsForOneTick, 4
uxTimerIncrementsForOneTick:
	.word	10000
	.section	.sdata2.xISRStackTop,"a"
	.align	2
	.type	xISRStackTop, @object
	.size	xISRStackTop, 4
xISRStackTop:
	.word	__freertos_irq_stack_top
	.text
.Letext0:
	.file 2 "/home/sp/repos/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stddef.h"
	.file 3 "/home/sp/repos/bl_iot_sdk/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/8.3.0/include/stdint-gcc.h"
	.file 4 "/home/sp/repos/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 5 "/home/sp/repos/bl_iot_sdk/components/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x28e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF33
	.byte	0xc
	.4byte	.LASF34
	.4byte	.LASF35
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0xd8
	.byte	0x16
	.4byte	0x3d
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x28
	.byte	0x12
	.4byte	0x5e
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x78
	.byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x9c
	.byte	0x4
	.4byte	0x86
	.byte	0x6
	.4byte	0x86
	.byte	0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x37
	.byte	0x20
	.4byte	0xb9
	.byte	0x4
	.4byte	0xa3
	.byte	0x6
	.4byte	0xa3
	.byte	0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x3e
	.byte	0x12
	.4byte	0x86
	.byte	0x4
	.4byte	0xc0
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3f
	.byte	0x11
	.4byte	0x52
	.byte	0x4
	.4byte	0xd1
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x41
	.byte	0x12
	.4byte	0x86
	.byte	0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x54
	.byte	0x13
	.4byte	0xd1
	.byte	0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x8
	.4byte	0x92
	.4byte	0x10c
	.byte	0x9
	.byte	0
	.byte	0x4
	.4byte	0x101
	.byte	0x7
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3d
	.byte	0x1b
	.4byte	0x10c
	.byte	0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0x3e
	.byte	0x17
	.4byte	0xcc
	.byte	0x5
	.byte	0x3
	.4byte	xISRStackTop
	.byte	0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x4b
	.byte	0xa
	.4byte	0xa3
	.byte	0x5
	.byte	0x3
	.4byte	ullNextTime
	.byte	0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x4c
	.byte	0x11
	.4byte	0x153
	.byte	0x5
	.byte	0x3
	.4byte	pullNextTime
	.byte	0xb
	.byte	0x4
	.4byte	0xaf
	.byte	0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x4d
	.byte	0xe
	.4byte	0x38
	.byte	0x5
	.byte	0x3
	.4byte	uxTimerIncrementsForOneTick
	.byte	0xa
	.4byte	.LASF24
	.byte	0x1
	.byte	0x4e
	.byte	0x1b
	.4byte	0x183
	.byte	0x5
	.byte	0x3
	.4byte	pullMachineTimerCompareRegister
	.byte	0xb
	.byte	0x4
	.4byte	0xb4
	.byte	0x4
	.4byte	0x17d
	.byte	0xc
	.4byte	0xee
	.byte	0x1
	.byte	0x4f
	.byte	0xc
	.byte	0x5
	.byte	0x3
	.4byte	TrapNetCounter
	.byte	0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0x50
	.byte	0x13
	.4byte	0x1a8
	.byte	0x5
	.byte	0x3
	.4byte	pTrapNetCounter
	.byte	0xb
	.byte	0x4
	.4byte	0xdd
	.byte	0xd
	.4byte	.LASF36
	.byte	0x1
	.byte	0xc0
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.byte	0xe
	.4byte	.LASF37
	.byte	0x1
	.byte	0x87
	.byte	0xc
	.4byte	0xd1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x217
	.byte	0xf
	.4byte	.LASF32
	.byte	0x1
	.byte	0x89
	.byte	0xd
	.byte	0x10
	.4byte	.Ldebug_ranges0+0
	.4byte	0x204
	.byte	0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0x8d
	.byte	0x1b
	.4byte	0x97
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x12
	.4byte	.LVL7
	.4byte	0x279
	.byte	0
	.byte	0x12
	.4byte	.LVL5
	.4byte	0x217
	.byte	0x12
	.4byte	.LVL6
	.4byte	0x285
	.byte	0
	.byte	0x13
	.4byte	.LASF38
	.byte	0x1
	.byte	0x6e
	.byte	0xa
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x26e
	.byte	0x14
	.4byte	.LASF27
	.byte	0x1
	.byte	0x70
	.byte	0xe
	.4byte	0x86
	.4byte	.LLST0
	.byte	0x14
	.4byte	.LASF28
	.byte	0x1
	.byte	0x70
	.byte	0x21
	.4byte	0x86
	.4byte	.LLST1
	.byte	0x15
	.4byte	.LASF29
	.byte	0x1
	.byte	0x71
	.byte	0x1f
	.4byte	0x274
	.4byte	0x200bffc
	.byte	0x15
	.4byte	.LASF30
	.byte	0x1
	.byte	0x72
	.byte	0x1f
	.4byte	0x274
	.4byte	0x200bff8
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x97
	.byte	0x4
	.4byte	0x26e
	.byte	0x16
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x5
	.byte	0x95
	.byte	0x6
	.byte	0x16
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x1
	.byte	0x89
	.byte	0xd
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x34
	.byte	0
	.byte	0x47
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x1c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL4
	.4byte	.LFE1
	.2byte	0x5
	.byte	0x7f
	.byte	0xe0,0xe3,0x7e
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"mtvec"
.LASF35:
	.string	"/home/sp/repos/bl_iot_sdk/customer_app/sdk_app_helloworld/build_out/freertos_riscv_ram"
.LASF12:
	.string	"uint64_t"
.LASF2:
	.string	"short int"
.LASF3:
	.string	"size_t"
.LASF19:
	.string	"__freertos_irq_stack_top"
.LASF22:
	.string	"pullNextTime"
.LASF33:
	.string	"GNU C99 8.3.0 -march=rv32imfc -mabi=ilp32f -gdwarf -O2 -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fshort-enums -ffreestanding -fno-strict-aliasing"
.LASF18:
	.string	"TrapNetCounter"
.LASF7:
	.string	"uint8_t"
.LASF6:
	.string	"long long int"
.LASF16:
	.string	"TickType_t"
.LASF5:
	.string	"long int"
.LASF24:
	.string	"pullMachineTimerCompareRegister"
.LASF25:
	.string	"pTrapNetCounter"
.LASF8:
	.string	"unsigned char"
.LASF30:
	.string	"pulTimeLow"
.LASF1:
	.string	"signed char"
.LASF13:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF0:
	.string	"unsigned int"
.LASF37:
	.string	"xPortStartScheduler"
.LASF15:
	.string	"BaseType_t"
.LASF32:
	.string	"xPortStartFirstTask"
.LASF38:
	.string	"vPortSetupTimerInterrupt"
.LASF9:
	.string	"short unsigned int"
.LASF36:
	.string	"vPortEndScheduler"
.LASF17:
	.string	"char"
.LASF4:
	.string	"int32_t"
.LASF21:
	.string	"ullNextTime"
.LASF31:
	.string	"vAssertCalled"
.LASF20:
	.string	"xISRStackTop"
.LASF11:
	.string	"long unsigned int"
.LASF14:
	.string	"StackType_t"
.LASF34:
	.string	"/home/sp/repos/bl_iot_sdk/components/bl602/freertos_riscv_ram/portable/GCC/RISC-V/port.c"
.LASF23:
	.string	"uxTimerIncrementsForOneTick"
.LASF27:
	.string	"ulCurrentTimeHigh"
.LASF28:
	.string	"ulCurrentTimeLow"
.LASF29:
	.string	"pulTimeHigh"
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
