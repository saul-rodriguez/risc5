	.file	"interrupt_manager.c"
	.option nopic
# GNU C17 (GCC) version 8.2.0 (riscv32-unknown-elf)
#	compiled by GNU C version 7.5.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  interrupt_manager.c -march=rv32imc -mabi=ilp32 -g -O3
# -Wall -fverbose-asm
# options enabled:  -faggressive-loop-optimizations -falign-functions
# -falign-jumps -falign-labels -falign-loops -fauto-inc-dec
# -fbranch-count-reg -fcaller-saves -fchkp-check-incomplete-type
# -fchkp-check-read -fchkp-check-write -fchkp-instrument-calls
# -fchkp-narrow-bounds -fchkp-optimize -fchkp-store-bounds
# -fchkp-use-static-bounds -fchkp-use-static-const-bounds
# -fchkp-use-wrappers -fcode-hoisting -fcombine-stack-adjustments -fcommon
# -fcompare-elim -fcprop-registers -fcrossjumping -fcse-follow-jumps
# -fdefer-pop -fdelete-null-pointer-checks -fdevirtualize
# -fdevirtualize-speculatively -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-types -fexpensive-optimizations
# -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse -fgcse
# -fgcse-after-reload -fgcse-lm -fgnu-runtime -fgnu-unique
# -fguess-branch-probability -fhoist-adjacent-loads -fident -fif-conversion
# -fif-conversion2 -findirect-inlining -finline -finline-atomics
# -finline-functions -finline-functions-called-once
# -finline-small-functions -fipa-bit-cp -fipa-cp -fipa-cp-clone -fipa-icf
# -fipa-icf-functions -fipa-icf-variables -fipa-profile -fipa-pure-const
# -fipa-ra -fipa-reference -fipa-sra -fipa-vrp -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots
# -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -floop-interchange
# -floop-unroll-and-jam -flra-remat -flto-odr-type-merging -fmath-errno
# -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
# -fomit-frame-pointer -foptimize-sibling-calls -foptimize-strlen
# -fpartial-inlining -fpeel-loops -fpeephole -fpeephole2 -fplt
# -fpredictive-commoning -fprefetch-loop-arrays -free -freg-struct-return
# -freorder-blocks -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fschedule-insns
# -fschedule-insns2 -fsection-anchors -fsemantic-interposition
# -fshow-column -fshrink-wrap -fshrink-wrap-separate -fsigned-zeros
# -fsplit-ivs-in-unroller -fsplit-loops -fsplit-paths -fsplit-wide-types
# -fssa-backprop -fssa-phiopt -fstdarg-opt -fstore-merging
# -fstrict-aliasing -fstrict-volatile-bitfields -fsync-libcalls
# -fthread-jumps -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp
# -ftree-builtin-call-dce -ftree-ccp -ftree-ch -ftree-coalesce-vars
# -ftree-copy-prop -ftree-dce -ftree-dominator-opts -ftree-dse
# -ftree-forwprop -ftree-fre -ftree-loop-distribute-patterns
# -ftree-loop-distribution -ftree-loop-if-convert -ftree-loop-im
# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-loop-vectorize
# -ftree-parallelize-loops= -ftree-partial-pre -ftree-phiprop -ftree-pre
# -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
# -ftree-slp-vectorize -ftree-slsr -ftree-sra -ftree-switch-conversion
# -ftree-tail-merge -ftree-ter -ftree-vrp -funit-at-a-time -funswitch-loops
# -fvar-tracking -fvar-tracking-assignments -fverbose-asm
# -fzero-initialized-in-bss -mdiv -mexplicit-relocs -mplt -mstrict-align

	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	1
	.globl	irq
	.type	irq, @function
irq:
.LFB0:
	.file 1 "interrupt_manager.c"
	.loc 1 6 1
	.cfi_startproc
.LVL0:
	.loc 1 8 2
# interrupt_manager.c:8: 	if (reg_intcon_bits->TMR0IE == 1 && reg_intflags_bits->TMR0IF == 1) {
	.loc 1 8 21 is_stmt 0
	lui	a5,%hi(reg_intcon_bits)	# tmp77,
	lw	a5,%lo(reg_intcon_bits)(a5)		# reg_intcon_bits.0_1, reg_intcon_bits
	lw	a5,0(a5)		# *reg_intcon_bits.0_1, *reg_intcon_bits.0_1
	srli	a5,a5,2	#, tmp79, *reg_intcon_bits.0_1
	andi	a5,a5,1	#, _2, tmp79
# interrupt_manager.c:8: 	if (reg_intcon_bits->TMR0IE == 1 && reg_intflags_bits->TMR0IF == 1) {
	.loc 1 8 5
	bnez	a5,.L4	#, _2,
.L1:
# interrupt_manager.c:37: }
	.loc 1 37 1
	ret	
.L4:
# interrupt_manager.c:8: 	if (reg_intcon_bits->TMR0IE == 1 && reg_intflags_bits->TMR0IF == 1) {
	.loc 1 8 55 discriminator 1
	lui	a4,%hi(reg_intflags_bits)	# tmp84,
	lw	a4,%lo(reg_intflags_bits)(a4)		# reg_intflags_bits.1_3, reg_intflags_bits
	lw	a4,0(a4)		# *reg_intflags_bits.1_3, *reg_intflags_bits.1_3
	srli	a4,a4,2	#, tmp86, *reg_intflags_bits.1_3
	andi	a4,a4,1	#, _4, tmp86
# interrupt_manager.c:8: 	if (reg_intcon_bits->TMR0IE == 1 && reg_intflags_bits->TMR0IF == 1) {
	.loc 1 8 35 discriminator 1
	bne	a4,a5,.L1	#, _4, _2,
	.loc 1 10 3 is_stmt 1
	tail	TMR0_ISR		#
.LVL1:
	.cfi_endproc
.LFE0:
	.size	irq, .-irq
.Letext0:
	.file 2 "/opt/riscv32i/riscv32-unknown-elf/include/machine/_default_types.h"
	.file 3 "/opt/riscv32i/riscv32-unknown-elf/include/sys/_stdint.h"
	.file 4 "../common/vargen.h"
	.file 5 "../common/eusart1.h"
	.file 6 "../common/timer0.h"
	.file 7 "hardware.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x252
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF33
	.byte	0xc
	.4byte	.LASF34
	.4byte	.LASF35
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x18
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x4
	.4byte	0x38
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
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x19
	.4byte	0x65
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x4
	.4byte	0x88
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x59
	.byte	0x6
	.byte	0x4
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.4byte	0xdf
	.byte	0x7
	.4byte	.LASF13
	.byte	0x4
	.byte	0x3d
	.byte	0xc
	.4byte	0x81
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.byte	0x7
	.4byte	.LASF14
	.byte	0x4
	.byte	0x3e
	.byte	0xc
	.4byte	0x81
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.byte	0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3f
	.byte	0xc
	.4byte	0x81
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x40
	.byte	0x3
	.4byte	0xa5
	.byte	0x4
	.4byte	0xdf
	.byte	0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0x42
	.byte	0x22
	.4byte	0xfc
	.byte	0x9
	.byte	0x4
	.4byte	0xeb
	.byte	0x6
	.byte	0x4
	.byte	0x4
	.byte	0x44
	.byte	0x9
	.4byte	0x13c
	.byte	0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0x45
	.byte	0xc
	.4byte	0x81
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.byte	0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x46
	.byte	0xc
	.4byte	0x81
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.byte	0x7
	.4byte	.LASF19
	.byte	0x4
	.byte	0x47
	.byte	0xc
	.4byte	0x81
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x48
	.byte	0x3
	.4byte	0x102
	.byte	0x4
	.4byte	0x13c
	.byte	0x8
	.4byte	.LASF22
	.byte	0x4
	.byte	0x4a
	.byte	0x20
	.4byte	0x159
	.byte	0x9
	.byte	0x4
	.4byte	0x148
	.byte	0x6
	.byte	0x4
	.byte	0x4
	.byte	0x4c
	.byte	0x9
	.4byte	0x1a7
	.byte	0x7
	.4byte	.LASF23
	.byte	0x4
	.byte	0x4d
	.byte	0xc
	.4byte	0x81
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.byte	0xa
	.string	"GO"
	.byte	0x4
	.byte	0x4e
	.byte	0xc
	.4byte	0x81
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.byte	0xa
	.string	"EN"
	.byte	0x4
	.byte	0x4f
	.byte	0xc
	.4byte	0x81
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.byte	0x7
	.4byte	.LASF24
	.byte	0x4
	.byte	0x50
	.byte	0xc
	.4byte	0x81
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0x51
	.byte	0x3
	.4byte	0x15f
	.byte	0x4
	.4byte	0x1a7
	.byte	0x8
	.4byte	.LASF26
	.byte	0x4
	.byte	0x53
	.byte	0x25
	.4byte	0x1c4
	.byte	0x9
	.byte	0x4
	.4byte	0x1b3
	.byte	0x8
	.4byte	.LASF27
	.byte	0x5
	.byte	0x13
	.byte	0x19
	.4byte	0x94
	.byte	0x8
	.4byte	.LASF28
	.byte	0x5
	.byte	0x14
	.byte	0x19
	.4byte	0x94
	.byte	0xb
	.byte	0x8
	.4byte	.LASF29
	.byte	0x5
	.byte	0x16
	.byte	0xf
	.4byte	0x1ef
	.byte	0x9
	.byte	0x4
	.4byte	0x1e2
	.byte	0x8
	.4byte	.LASF30
	.byte	0x5
	.byte	0x17
	.byte	0xf
	.4byte	0x1ef
	.byte	0x8
	.4byte	.LASF31
	.byte	0x6
	.byte	0xd
	.byte	0xf
	.4byte	0x1ef
	.byte	0x8
	.4byte	.LASF32
	.byte	0x7
	.byte	0xf
	.byte	0x1f
	.4byte	0x3f
	.byte	0xc
	.string	"irq"
	.byte	0x1
	.byte	0x5
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.4byte	0x249
	.byte	0xd
	.4byte	.LASF36
	.byte	0x1
	.byte	0x5
	.byte	0x13
	.4byte	0x99
	.4byte	.LLST0
	.byte	0xe
	.4byte	.LVL1
	.4byte	0x249
	.byte	0
	.byte	0xf
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x6
	.byte	0x12
	.byte	0x6
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
	.byte	0x35
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
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
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
.LASF5:
	.string	"__uint8_t"
.LASF26:
	.string	"reg_timer0_conf_bits"
.LASF35:
	.string	"/home/saul/projects/tinyfpga/gcc_tests/c_timer"
.LASF21:
	.string	"reg_intflags_bits"
.LASF33:
	.string	"GNU C17 8.2.0 -march=rv32imc -mabi=ilp32 -g -O3"
.LASF36:
	.string	"irqs"
.LASF1:
	.string	"unsigned char"
.LASF31:
	.string	"TMR0_InterruptHandler"
.LASF7:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF29:
	.string	"EUSART1_TxDefaultInterruptHandler"
.LASF23:
	.string	"INT_TMR"
.LASF16:
	.string	"INTFLAGS_bits_s"
.LASF17:
	.string	"RXIE"
.LASF13:
	.string	"RXIF"
.LASF32:
	.string	"tmr_flag"
.LASF6:
	.string	"__uint32_t"
.LASF27:
	.string	"eusart1TxBufferRemaining"
.LASF10:
	.string	"unsigned int"
.LASF37:
	.string	"TMR0_ISR"
.LASF9:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint8_t"
.LASF19:
	.string	"TMR0IE"
.LASF15:
	.string	"TMR0IF"
.LASF22:
	.string	"reg_intcon_bits"
.LASF8:
	.string	"long long int"
.LASF25:
	.string	"TIMER0_CONF_bits_s"
.LASF20:
	.string	"INTCON_bits_s"
.LASF2:
	.string	"short int"
.LASF30:
	.string	"EUSART1_RxDefaultInterruptHandler"
.LASF18:
	.string	"TXIE"
.LASF14:
	.string	"TXIF"
.LASF12:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF24:
	.string	"AUTO_LD"
.LASF34:
	.string	"interrupt_manager.c"
.LASF28:
	.string	"eusart1RxCount"
	.ident	"GCC: (GNU) 8.2.0"
