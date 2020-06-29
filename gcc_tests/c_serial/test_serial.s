	.file	"test_serial.c"
	.option nopic
# GNU C17 (GCC) version 8.2.0 (riscv32-unknown-elf)
#	compiled by GNU C version 7.5.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  test_serial.c -march=rv32imc -mabi=ilp32
# -auxbase-strip test_serial.s -g -O0 -fverbose-asm
# options enabled:  -faggressive-loop-optimizations -fauto-inc-dec
# -fchkp-check-incomplete-type -fchkp-check-read -fchkp-check-write
# -fchkp-instrument-calls -fchkp-narrow-bounds -fchkp-optimize
# -fchkp-store-bounds -fchkp-use-static-bounds
# -fchkp-use-static-const-bounds -fchkp-use-wrappers -fcommon
# -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -ffp-int-builtin-inexact -ffunction-cse
# -fgcse-lm -fgnu-runtime -fgnu-unique -fident -finline-atomics
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fivopts -fkeep-static-consts -fleading-underscore -flifetime-dse
# -flto-odr-type-merging -fmath-errno -fmerge-debug-strings -fpeephole
# -fplt -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
# -fshow-column -fshrink-wrap-separate -fsigned-zeros
# -fsplit-ivs-in-unroller -fssa-backprop -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math
# -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
# -ftree-reassoc -ftree-scev-cprop -funit-at-a-time -fverbose-asm
# -fzero-initialized-in-bss -mdiv -mexplicit-relocs -mplt -mstrict-align

	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.globl	irq
	.type	irq, @function
irq:
.LFB0:
	.file 1 "test_serial.c"
	.loc 1 11 1
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)	#,
	.cfi_offset 8, -4
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)	# irqs, irqs
# test_serial.c:12: 	if (irqs & IRQ_5) {
	.loc 1 12 11
	lw	a5,-20(s0)		# tmp78, irqs
	andi	a5,a5,32	#, _1, tmp78
# test_serial.c:12: 	if (irqs & IRQ_5) {
	.loc 1 12 5
	beqz	a5,.L2	#, _1,
# test_serial.c:13: 		reg_porta = IRQ_5;
	.loc 1 13 3
	li	a5,1048576		# _2,
# test_serial.c:13: 		reg_porta = IRQ_5;
	.loc 1 13 13
	li	a4,32		# tmp79,
	sw	a4,0(a5)	# tmp79, *_2
.L2:
# test_serial.c:16: 	if (irqs & IRQ_6) {
	.loc 1 16 11
	lw	a5,-20(s0)		# tmp80, irqs
	andi	a5,a5,64	#, _3, tmp80
# test_serial.c:16: 	if (irqs & IRQ_6) {
	.loc 1 16 5
	beqz	a5,.L3	#, _3,
# test_serial.c:17: 		reg_porta = IRQ_6;		
	.loc 1 17 3
	li	a5,1048576		# _4,
# test_serial.c:17: 		reg_porta = IRQ_6;		
	.loc 1 17 13
	li	a4,64		# tmp81,
	sw	a4,0(a5)	# tmp81, *_4
.L3:
# test_serial.c:20: 	if (irqs & IRQ_7) {
	.loc 1 20 11
	lw	a5,-20(s0)		# tmp82, irqs
	andi	a5,a5,128	#, _5, tmp82
# test_serial.c:20: 	if (irqs & IRQ_7) {
	.loc 1 20 5
	beqz	a5,.L5	#, _5,
# test_serial.c:21: 		reg_porta = IRQ_7;
	.loc 1 21 3
	li	a5,1048576		# _6,
# test_serial.c:21: 		reg_porta = IRQ_7;
	.loc 1 21 13
	li	a4,128		# tmp83,
	sw	a4,0(a5)	# tmp83, *_6
.L5:
# test_serial.c:24: }
	.loc 1 24 1
	nop	
	lw	s0,28(sp)		#,
	.cfi_restore 8
	addi	sp,sp,32	#,,
	.cfi_def_cfa_register 2
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	irq, .-irq
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.loc 1 28 1
	.cfi_startproc
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)	#,
	.cfi_offset 8, -4
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
# test_serial.c:32: 	reg_uart_conf = UART_CONF;
	.loc 1 32 2
	li	a5,1048576		# tmp73,
	addi	a5,a5,16	#, _1, tmp73
# test_serial.c:32: 	reg_uart_conf = UART_CONF;
	.loc 1 32 16
	li	a4,1666		# tmp74,
	sw	a4,0(a5)	# tmp74, *_1
# test_serial.c:34: 	aux = 0xab;
	.loc 1 34 6
	li	a5,-85		# tmp75,
	sb	a5,-17(s0)	# tmp75, aux
# test_serial.c:53: 	alfa.RXIF = 1;
	.loc 1 53 12
	lbu	a5,-24(s0)	# tmp77, alfa.D.1566.RXIF
	ori	a5,a5,1	#, tmp78, tmp77
	sb	a5,-24(s0)	# tmp79, alfa.D.1566.RXIF
.L7:
# test_serial.c:56: 		alfa.RXIF = 1;
	.loc 1 56 13 discriminator 1
	lbu	a5,-24(s0)	# tmp81, alfa.D.1566.RXIF
	ori	a5,a5,1	#, tmp82, tmp81
	sb	a5,-24(s0)	# tmp83, alfa.D.1566.RXIF
# test_serial.c:57: 		alfa.RXIF = 0;
	.loc 1 57 13 discriminator 1
	lbu	a5,-24(s0)	# tmp85, alfa.D.1566.RXIF
	andi	a5,a5,-2	#, tmp86, tmp85
	sb	a5,-24(s0)	# tmp87, alfa.D.1566.RXIF
# test_serial.c:56: 		alfa.RXIF = 1;
	.loc 1 56 13 discriminator 1
	j	.L7		#
	.cfi_endproc
.LFE1:
	.size	main, .-main
.Letext0:
	.file 2 "/opt/riscv32i/riscv32-unknown-elf/include/machine/_default_types.h"
	.file 3 "/opt/riscv32i/riscv32-unknown-elf/include/sys/_stdint.h"
	.file 4 "../common/vargen.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x144
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF17
	.byte	0xc
	.4byte	.LASF18
	.4byte	.LASF19
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x54
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x48
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.byte	0x1d
	.byte	0x2
	.4byte	0xbd
	.byte	0x6
	.4byte	.LASF11
	.byte	0x4
	.byte	0x1e
	.byte	0xc
	.4byte	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.byte	0x7
	.string	"RXI"
	.byte	0x4
	.byte	0x1f
	.byte	0xc
	.4byte	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.byte	0x6
	.4byte	.LASF12
	.byte	0x4
	.byte	0x20
	.byte	0xc
	.4byte	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x9
	.4byte	0xcc
	.byte	0x9
	.4byte	0x83
	.byte	0
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x22
	.byte	0x3
	.4byte	0xbd
	.byte	0xa
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x125
	.byte	0xb
	.4byte	.LASF14
	.byte	0x1
	.byte	0x1d
	.byte	0x10
	.4byte	0x2c
	.byte	0xc
	.string	"aux"
	.byte	0x1
	.byte	0x1e
	.byte	0x10
	.4byte	0x2c
	.byte	0x2
	.byte	0x91
	.byte	0x6f
	.byte	0xd
	.string	"rec"
	.byte	0x1
	.byte	0x1e
	.byte	0x14
	.4byte	0x2c
	.byte	0xe
	.4byte	.LASF15
	.byte	0x1
	.byte	0x33
	.byte	0x14
	.4byte	0xcc
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0xf
	.string	"irq"
	.byte	0x1
	.byte	0xa
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x10
	.4byte	.LASF20
	.byte	0x1
	.byte	0xa
	.byte	0x13
	.4byte	0x77
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
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
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
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
	.byte	0xe
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
	.byte	0x5
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xd
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
	.byte	0xb
	.byte	0xb
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0xb
	.byte	0xb
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x17
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xd
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
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
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
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
	.byte	0xd
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
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
	.byte	0xe
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
	.byte	0xf
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0x8
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
	.byte	0x10
	.byte	0x5
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"alfa"
.LASF17:
	.string	"GNU C17 8.2.0 -march=rv32imc -mabi=ilp32 -g -O0"
.LASF18:
	.string	"test_serial.c"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF11:
	.string	"RXIF"
.LASF19:
	.string	"/home/saul/projects/tinyfpga/gcc_tests/c_serial"
.LASF9:
	.string	"__uint32_t"
.LASF14:
	.string	"flag"
.LASF16:
	.string	"main"
.LASF8:
	.string	"unsigned int"
.LASF13:
	.string	"reg_intcon_bits_t"
.LASF7:
	.string	"long long unsigned int"
.LASF12:
	.string	"TMR0"
.LASF6:
	.string	"long long int"
.LASF20:
	.string	"irqs"
.LASF2:
	.string	"short int"
.LASF10:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (GNU) 8.2.0"
