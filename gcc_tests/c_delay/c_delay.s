	.file	"c_delay.c"
	.option nopic
# GNU C17 (GCC) version 8.2.0 (riscv32-unknown-elf)
#	compiled by GNU C version 7.5.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  c_delay.c -march=rv32imc -mabi=ilp32 -g -O3 -Wall
# -fverbose-asm
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
	.file 1 "c_delay.c"
	.loc 1 11 1
	.cfi_startproc
.LVL0:
	.loc 1 12 2
# c_delay.c:12: 	if (irqs & IRQ_5) {
	.loc 1 12 11 is_stmt 0
	andi	a5,a0,32	#, tmp76, irqs
# c_delay.c:12: 	if (irqs & IRQ_5) {
	.loc 1 12 5
	beqz	a5,.L2	#, tmp76,
	.loc 1 13 3 is_stmt 1
# c_delay.c:13: 		reg_porta = IRQ_5;
	.loc 1 13 13 is_stmt 0
	li	a5,1048576		# tmp78,
	li	a4,32		# tmp79,
	sw	a4,20(a5)	# tmp79, MEM[(volatile uint32_t *)1048596B]
.L2:
	.loc 1 16 2 is_stmt 1
# c_delay.c:16: 	if (irqs & IRQ_6) {
	.loc 1 16 11 is_stmt 0
	andi	a5,a0,64	#, tmp80, irqs
# c_delay.c:16: 	if (irqs & IRQ_6) {
	.loc 1 16 5
	beqz	a5,.L3	#, tmp80,
	.loc 1 17 3 is_stmt 1
# c_delay.c:17: 		reg_porta = IRQ_6;		
	.loc 1 17 13 is_stmt 0
	li	a5,1048576		# tmp82,
	li	a4,64		# tmp83,
	sw	a4,20(a5)	# tmp83, MEM[(volatile uint32_t *)1048596B]
.L3:
	.loc 1 20 2 is_stmt 1
# c_delay.c:20: 	if (irqs & IRQ_7) {
	.loc 1 20 11 is_stmt 0
	andi	a0,a0,128	#, tmp84, irqs
.LVL1:
# c_delay.c:20: 	if (irqs & IRQ_7) {
	.loc 1 20 5
	beqz	a0,.L1	#, tmp84,
	.loc 1 21 3 is_stmt 1
# c_delay.c:21: 		reg_porta = IRQ_7;
	.loc 1 21 13 is_stmt 0
	li	a5,1048576		# tmp86,
	li	a4,128		# tmp87,
	sw	a4,20(a5)	# tmp87, MEM[(volatile uint32_t *)1048596B]
.L1:
# c_delay.c:23: }
	.loc 1 23 1
	ret	
	.cfi_endproc
.LFE0:
	.size	irq, .-irq
	.section	.text.startup,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.loc 1 27 1 is_stmt 1
	.cfi_startproc
	.loc 1 28 2
	.loc 1 30 2
# c_delay.c:27: {
	.loc 1 27 1 is_stmt 0
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)	#,
	sw	s1,4(sp)	#,
	sw	ra,12(sp)	#,
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
# c_delay.c:30: 	reg_intcon = 0x00;
	.loc 1 30 13
	li	a5,1048576		# tmp72,
	sw	zero,0(a5)	#, MEM[(volatile uint32_t *)1048576B]
	.loc 1 31 2 is_stmt 1
.LVL2:
# c_delay.c:34: 		reg_porta = 0x00;
	.loc 1 34 13 is_stmt 0
	li	s0,1048576		# tmp74,
# c_delay.c:38: 		reg_porta = 0xff;
	.loc 1 38 13
	li	s1,255		# tmp77,
.L16:
	.loc 1 33 2 is_stmt 1 discriminator 1
	.loc 1 34 3 discriminator 1
# c_delay.c:34: 		reg_porta = 0x00;
	.loc 1 34 13 is_stmt 0 discriminator 1
	sw	zero,20(s0)	#, MEM[(volatile uint32_t *)1048596B]
	.loc 1 37 3 is_stmt 1 discriminator 1
	li	a0,1454		#,
	call	delay_cycles_11		#
.LVL3:
	.loc 1 37 16 discriminator 1
	.loc 1 38 3 discriminator 1
# c_delay.c:40: 		__delay_ms(1);
	.loc 1 40 3 is_stmt 0 discriminator 1
	li	a0,1454		#,
# c_delay.c:38: 		reg_porta = 0xff;
	.loc 1 38 13 discriminator 1
	sw	s1,20(s0)	# tmp77, MEM[(volatile uint32_t *)1048596B]
	.loc 1 40 3 is_stmt 1 discriminator 1
	call	delay_cycles_11		#
.LVL4:
	.loc 1 40 16 discriminator 1
	j	.L16		#
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "/opt/riscv32i/riscv32-unknown-elf/include/machine/_default_types.h"
	.file 3 "/opt/riscv32i/riscv32-unknown-elf/include/sys/_stdint.h"
	.file 4 "../common/vargen.h"
	.file 5 "../common/delay.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x220
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF25
	.byte	0xc
	.4byte	.LASF26
	.4byte	.LASF27
	.4byte	.Ldebug_ranges0+0
	.4byte	0
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
	.byte	0x3c
	.byte	0x9
	.4byte	0xbd
	.byte	0x6
	.4byte	.LASF11
	.byte	0x4
	.byte	0x3d
	.byte	0xc
	.4byte	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.byte	0x6
	.4byte	.LASF12
	.byte	0x4
	.byte	0x3e
	.byte	0xc
	.4byte	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.byte	0x6
	.4byte	.LASF13
	.byte	0x4
	.byte	0x3f
	.byte	0xc
	.4byte	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x40
	.byte	0x3
	.4byte	0x83
	.byte	0x7
	.4byte	0xbd
	.byte	0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0x42
	.byte	0x22
	.4byte	0xda
	.byte	0x9
	.byte	0x4
	.4byte	0xc9
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.byte	0x44
	.byte	0x9
	.4byte	0x11a
	.byte	0x6
	.4byte	.LASF15
	.byte	0x4
	.byte	0x45
	.byte	0xc
	.4byte	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.byte	0x6
	.4byte	.LASF16
	.byte	0x4
	.byte	0x46
	.byte	0xc
	.4byte	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.byte	0x6
	.4byte	.LASF17
	.byte	0x4
	.byte	0x47
	.byte	0xc
	.4byte	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x48
	.byte	0x3
	.4byte	0xe0
	.byte	0x7
	.4byte	0x11a
	.byte	0x8
	.4byte	.LASF20
	.byte	0x4
	.byte	0x4a
	.byte	0x20
	.4byte	0x137
	.byte	0x9
	.byte	0x4
	.4byte	0x126
	.byte	0x5
	.byte	0x4
	.byte	0x4
	.byte	0x4c
	.byte	0x9
	.4byte	0x185
	.byte	0x6
	.4byte	.LASF21
	.byte	0x4
	.byte	0x4d
	.byte	0xc
	.4byte	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.byte	0xa
	.string	"GO"
	.byte	0x4
	.byte	0x4e
	.byte	0xc
	.4byte	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.byte	0xa
	.string	"EN"
	.byte	0x4
	.byte	0x4f
	.byte	0xc
	.4byte	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.byte	0x6
	.4byte	.LASF22
	.byte	0x4
	.byte	0x50
	.byte	0xc
	.4byte	0x70
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x51
	.byte	0x3
	.4byte	0x13d
	.byte	0x7
	.4byte	0x185
	.byte	0x8
	.4byte	.LASF24
	.byte	0x4
	.byte	0x53
	.byte	0x25
	.4byte	0x1a2
	.byte	0x9
	.byte	0x4
	.4byte	0x191
	.byte	0xb
	.4byte	.LASF28
	.byte	0x1
	.byte	0x1a
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x1f0
	.byte	0xc
	.string	"a"
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.4byte	0x69
	.byte	0xa
	.byte	0xd
	.4byte	.LVL3
	.4byte	0x217
	.4byte	0x1de
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x5ae
	.byte	0
	.byte	0xf
	.4byte	.LVL4
	.4byte	0x217
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x5ae
	.byte	0
	.byte	0
	.byte	0x10
	.string	"irq"
	.byte	0x1
	.byte	0xa
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.4byte	0x217
	.byte	0x11
	.4byte	.LASF29
	.byte	0x1
	.byte	0xa
	.byte	0x13
	.4byte	0x77
	.4byte	.LLST0
	.byte	0
	.byte	0x12
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x5
	.byte	0x15
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
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"reg_timer0_conf_bits"
.LASF19:
	.string	"reg_intflags_bits"
.LASF25:
	.string	"GNU C17 8.2.0 -march=rv32imc -mabi=ilp32 -g -O3"
.LASF29:
	.string	"irqs"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF30:
	.string	"delay_cycles_11"
.LASF21:
	.string	"INT_TMR"
.LASF14:
	.string	"INTFLAGS_bits_s"
.LASF15:
	.string	"RXIE"
.LASF11:
	.string	"RXIF"
.LASF9:
	.string	"__uint32_t"
.LASF28:
	.string	"main"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF17:
	.string	"TMR0IE"
.LASF13:
	.string	"TMR0IF"
.LASF20:
	.string	"reg_intcon_bits"
.LASF6:
	.string	"long long int"
.LASF23:
	.string	"TIMER0_CONF_bits_s"
.LASF27:
	.string	"/home/saul/projects/tinyfpga/gcc_tests/c_delay"
.LASF18:
	.string	"INTCON_bits_s"
.LASF2:
	.string	"short int"
.LASF26:
	.string	"c_delay.c"
.LASF16:
	.string	"TXIE"
.LASF12:
	.string	"TXIF"
.LASF10:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF22:
	.string	"AUTO_LD"
	.ident	"GCC: (GNU) 8.2.0"
