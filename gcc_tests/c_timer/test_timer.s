	.file	"test_timer.c"
	.option nopic
# GNU C17 (GCC) version 8.2.0 (riscv32-unknown-elf)
#	compiled by GNU C version 7.5.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  test_timer.c -march=rv32imc -mabi=ilp32 -g -O3 -Wall
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
	.globl	myTMR0_handler
	.type	myTMR0_handler, @function
myTMR0_handler:
.LFB0:
	.file 1 "test_timer.c"
	.loc 1 11 1
	.cfi_startproc
	.loc 1 12 2
# test_timer.c:12: 	tmr_flag = 1;
	.loc 1 12 11 is_stmt 0
	lui	a5,%hi(tmr_flag)	# tmp72,
	li	a4,1		# tmp73,
	sb	a4,%lo(tmr_flag)(a5)	# tmp73, tmr_flag
# test_timer.c:13: }
	.loc 1 13 1
	ret	
	.cfi_endproc
.LFE0:
	.size	myTMR0_handler, .-myTMR0_handler
	.section	.text.startup,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB1:
	.loc 1 16 1 is_stmt 1
	.cfi_startproc
	.loc 1 18 2
	.loc 1 20 2
# test_timer.c:16: {
	.loc 1 16 1 is_stmt 0
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
# test_timer.c:20: 	TMR0_Initialize(EN);
	.loc 1 20 2
	li	a0,4		#,
# test_timer.c:16: {
	.loc 1 16 1
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	sw	s2,16(sp)	#,
	sw	s3,12(sp)	#,
	sw	s1,20(sp)	#,
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 9, -12
# test_timer.c:20: 	TMR0_Initialize(EN);
	.loc 1 20 2
	call	TMR0_Initialize		#
.LVL0:
	.loc 1 22 2 is_stmt 1
	li	a0,-64		#,
	call	TMR0_WriteTimer		#
.LVL1:
	.loc 1 23 2
	lui	a0,%hi(myTMR0_handler)	# tmp78,
	addi	a0,a0,%lo(myTMR0_handler)	#, tmp78,
	call	TMR0_SetInterruptHandler		#
.LVL2:
	.loc 1 25 2
	call	TMR0_StartTimer		#
.LVL3:
	.loc 1 27 2
	.loc 1 28 2
# test_timer.c:31: 	reg_intcon_bits->TMR0IE = 1;
	.loc 1 31 17 is_stmt 0
	lui	a5,%hi(reg_intcon_bits)	# tmp80,
	lw	a3,%lo(reg_intcon_bits)(a5)		# reg_intcon_bits.0_1, reg_intcon_bits
# test_timer.c:28: 	tmr_flag = 0;
	.loc 1 28 11
	lui	s0,%hi(tmr_flag)	# tmp93,
	sb	zero,%lo(tmr_flag)(s0)	#, tmr_flag
	.loc 1 31 2 is_stmt 1
# test_timer.c:31: 	reg_intcon_bits->TMR0IE = 1;
	.loc 1 31 26 is_stmt 0
	lbu	a5,0(a3)	#, reg_intcon_bits.0_1->TMR0IE
# test_timer.c:27: 	aux = 0x00;
	.loc 1 27 6
	li	a4,0		# aux,
# test_timer.c:61: 			reg_porta = aux++;
	.loc 1 61 14
	li	s3,1048576		# tmp91,
# test_timer.c:31: 	reg_intcon_bits->TMR0IE = 1;
	.loc 1 31 26
	ori	a5,a5,4	#, tmp83, reg_intcon_bits.0_1->TMR0IE
	sb	a5,0(a3)	# tmp83, reg_intcon_bits.0_1->TMR0IE
# test_timer.c:63: 			if (aux == 3) {
	.loc 1 63 7
	li	s2,3		# tmp92,
.LVL4:
.L5:
	.loc 1 33 2 is_stmt 1
	.loc 1 59 3
# test_timer.c:59: 		if (tmr_flag) {
	.loc 1 59 7 is_stmt 0
	lbu	a5,%lo(tmr_flag)(s0)	#, tmr_flag
	andi	a5,a5,0xff	# tmr_flag.1_2, tmr_flag
# test_timer.c:59: 		if (tmr_flag) {
	.loc 1 59 6
	beqz	a5,.L5	#, tmr_flag.1_2,
	.loc 1 60 4 is_stmt 1
	.loc 1 64 5
	.loc 1 66 5
# test_timer.c:60: 			tmr_flag = 0;
	.loc 1 60 13 is_stmt 0
	sb	zero,%lo(tmr_flag)(s0)	#, tmr_flag
	.loc 1 61 4 is_stmt 1
# test_timer.c:61: 			reg_porta = aux++;
	.loc 1 61 19 is_stmt 0
	addi	s1,a4,1	#, tmp89, aux
	andi	s1,s1,0xff	# aux, tmp89
.LVL5:
# test_timer.c:61: 			reg_porta = aux++;
	.loc 1 61 14
	sw	a4,20(s3)	# aux, MEM[(volatile uint32_t *)1048596B]
	.loc 1 63 4 is_stmt 1
# test_timer.c:63: 			if (aux == 3) {
	.loc 1 63 7 is_stmt 0
	bne	s1,s2,.L6	#, aux, tmp92,
# test_timer.c:64: 				TMR0_StopTimer();   // #pragma GCC optimize ("O2") was used to prevent the optimizer O3 to remove this
	.loc 1 64 5
	call	TMR0_StopTimer		#
.LVL6:
# test_timer.c:16: {
	.loc 1 16 1
	mv	a4,s1	# aux, aux
	j	.L5		#
.L6:
# test_timer.c:66: 				TMR0_StartTimer(); // if auto_load is not enabled
	.loc 1 66 5
	call	TMR0_StartTimer		#
.LVL7:
# test_timer.c:16: {
	.loc 1 16 1
	mv	a4,s1	# aux, aux
	j	.L5		#
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.comm	tmr_flag,1,1
	.text
.Letext0:
	.file 2 "/opt/riscv32i/riscv32-unknown-elf/include/machine/_default_types.h"
	.file 3 "/opt/riscv32i/riscv32-unknown-elf/include/sys/_stdint.h"
	.file 4 "../common/vargen.h"
	.file 5 "../common/eusart1.h"
	.file 6 "../common/timer0.h"
	.file 7 "hardware.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x31b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF39
	.byte	0xc
	.4byte	.LASF40
	.4byte	.LASF41
	.4byte	.Ldebug_ranges0+0
	.4byte	0
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
	.byte	0xc
	.byte	0x7
	.byte	0x4
	.4byte	0x81
	.byte	0x6
	.byte	0x6
	.byte	0xe
	.4byte	0x226
	.byte	0xd
	.4byte	.LASF23
	.byte	0x1
	.byte	0xe
	.string	"GO"
	.byte	0x2
	.byte	0xe
	.string	"EN"
	.byte	0x4
	.byte	0xd
	.4byte	.LASF31
	.byte	0x8
	.byte	0
	.byte	0x8
	.4byte	.LASF32
	.byte	0x6
	.byte	0xd
	.byte	0xf
	.4byte	0x1ef
	.byte	0x8
	.4byte	.LASF33
	.byte	0x7
	.byte	0xf
	.byte	0x1f
	.4byte	0x3f
	.byte	0xf
	.4byte	0x232
	.byte	0x1
	.byte	0x8
	.byte	0x18
	.byte	0x5
	.byte	0x3
	.4byte	tmr_flag
	.byte	0x10
	.4byte	.LASF42
	.byte	0x1
	.byte	0xf
	.byte	0x5
	.4byte	0x7a
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x2d0
	.byte	0x11
	.string	"aux"
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.4byte	0x38
	.4byte	.LLST0
	.byte	0x12
	.4byte	.LVL0
	.4byte	0x2e2
	.4byte	0x289
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x12
	.4byte	.LVL1
	.4byte	0x2ee
	.4byte	0x29d
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x9
	.byte	0xc0
	.byte	0
	.byte	0x12
	.4byte	.LVL2
	.4byte	0x2fa
	.4byte	0x2b4
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	myTMR0_handler
	.byte	0
	.byte	0x14
	.4byte	.LVL3
	.4byte	0x306
	.byte	0x14
	.4byte	.LVL6
	.4byte	0x312
	.byte	0x14
	.4byte	.LVL7
	.4byte	0x306
	.byte	0
	.byte	0x15
	.4byte	.LASF43
	.byte	0x1
	.byte	0xa
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x16
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x6
	.byte	0xf
	.byte	0x6
	.byte	0x16
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x6
	.byte	0x13
	.byte	0x6
	.byte	0x16
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x6
	.byte	0x16
	.byte	0x6
	.byte	0x16
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x6
	.byte	0x10
	.byte	0x6
	.byte	0x16
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x6
	.byte	0x11
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
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0xd
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
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
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL5
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x59
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
.LASF5:
	.string	"__uint8_t"
.LASF26:
	.string	"reg_timer0_conf_bits"
.LASF35:
	.string	"TMR0_WriteTimer"
.LASF21:
	.string	"reg_intflags_bits"
.LASF36:
	.string	"TMR0_SetInterruptHandler"
.LASF39:
	.string	"GNU C17 8.2.0 -march=rv32imc -mabi=ilp32 -g -O3"
.LASF1:
	.string	"unsigned char"
.LASF32:
	.string	"TMR0_InterruptHandler"
.LASF7:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF29:
	.string	"EUSART1_TxDefaultInterruptHandler"
.LASF23:
	.string	"INT_TMR"
.LASF37:
	.string	"TMR0_StartTimer"
.LASF16:
	.string	"INTFLAGS_bits_s"
.LASF17:
	.string	"RXIE"
.LASF13:
	.string	"RXIF"
.LASF33:
	.string	"tmr_flag"
.LASF6:
	.string	"__uint32_t"
.LASF40:
	.string	"test_timer.c"
.LASF43:
	.string	"myTMR0_handler"
.LASF27:
	.string	"eusart1TxBufferRemaining"
.LASF10:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint8_t"
.LASF38:
	.string	"TMR0_StopTimer"
.LASF19:
	.string	"TMR0IE"
.LASF15:
	.string	"TMR0IF"
.LASF42:
	.string	"main"
.LASF22:
	.string	"reg_intcon_bits"
.LASF8:
	.string	"long long int"
.LASF34:
	.string	"TMR0_Initialize"
.LASF25:
	.string	"TIMER0_CONF_bits_s"
.LASF20:
	.string	"INTCON_bits_s"
.LASF2:
	.string	"short int"
.LASF30:
	.string	"EUSART1_RxDefaultInterruptHandler"
.LASF31:
	.string	"AUTO_LOAD"
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
.LASF41:
	.string	"/home/saul/projects/tinyfpga/gcc_tests/c_timer"
.LASF28:
	.string	"eusart1RxCount"
	.ident	"GCC: (GNU) 8.2.0"
