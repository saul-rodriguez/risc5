	.file	"timer0.c"
	.option nopic
# GNU C17 (GCC) version 8.2.0 (riscv32-unknown-elf)
#	compiled by GNU C version 7.5.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  ../common/timer0.c -march=rv32imc -mabi=ilp32 -g -O3
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
	.comm	TMR0_InterruptHandler,4,4
	.align	1
	.globl	TMR0_Initialize
	.type	TMR0_Initialize, @function
TMR0_Initialize:
.LFB0:
	.file 1 "../common/timer0.c"
	.loc 1 9 1
	.cfi_startproc
.LVL0:
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)	#,
	sw	s0,24(sp)	#,
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)	# conf, conf
	.loc 1 11 2
	li	a5,1048576		# tmp73,
	addi	a5,a5,32	#, _1, tmp73
# ../common/timer0.c:11: 	reg_timer0_conf = conf;
	.loc 1 11 18 is_stmt 0
	lw	a4,-20(s0)		# tmp74, conf
	sw	a4,0(a5)	# tmp74, *_1
	.loc 1 18 2 is_stmt 1
	lui	a5,%hi(TMR0_DefaultInterruptHandler)	# tmp75,
	addi	a0,a5,%lo(TMR0_DefaultInterruptHandler)	#, tmp75,
.LVL1:
	call	TMR0_SetInterruptHandler		#
.LVL2:
# ../common/timer0.c:20: }
	.loc 1 20 1 is_stmt 0
	nop	
	lw	ra,28(sp)		#,
	.cfi_restore 1
	lw	s0,24(sp)		#,
	.cfi_restore 8
.LVL3:
	addi	sp,sp,32	#,,
	.cfi_def_cfa_register 2
.LVL4:
	jr	ra		#
	.cfi_endproc
.LFE0:
	.size	TMR0_Initialize, .-TMR0_Initialize
	.align	1
	.globl	TMR0_StartTimer
	.type	TMR0_StartTimer, @function
TMR0_StartTimer:
.LFB1:
	.loc 1 23 1 is_stmt 1
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)	#,
	.cfi_offset 8, -4
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
	.loc 1 24 2
# ../common/timer0.c:24: 	reg_timer0_conf_bits->GO = 1;
	.loc 1 24 22 is_stmt 0
	lui	a5,%hi(reg_timer0_conf_bits)	# tmp73,
	lw	a5,%lo(reg_timer0_conf_bits)(a5)		# reg_timer0_conf_bits.0_1, reg_timer0_conf_bits
# ../common/timer0.c:24: 	reg_timer0_conf_bits->GO = 1;
	.loc 1 24 27
	lbu	a4,0(a5)	# tmp75, reg_timer0_conf_bits.0_1->GO
	ori	a4,a4,2	#, tmp76, tmp75
	sb	a4,0(a5)	# tmp77, reg_timer0_conf_bits.0_1->GO
# ../common/timer0.c:25: }
	.loc 1 25 1
	nop	
	lw	s0,12(sp)		#,
	.cfi_restore 8
	addi	sp,sp,16	#,,
	.cfi_def_cfa_register 2
	jr	ra		#
	.cfi_endproc
.LFE1:
	.size	TMR0_StartTimer, .-TMR0_StartTimer
	.align	1
	.globl	TMR0_StopTimer
	.type	TMR0_StopTimer, @function
TMR0_StopTimer:
.LFB2:
	.loc 1 31 1 is_stmt 1
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)	#,
	.cfi_offset 8, -4
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
	.loc 1 32 2
# ../common/timer0.c:32: 	reg_timer0_conf_bits->EN = 0;
	.loc 1 32 22 is_stmt 0
	lui	a5,%hi(reg_timer0_conf_bits)	# tmp74,
	lw	a5,%lo(reg_timer0_conf_bits)(a5)		# reg_timer0_conf_bits.1_1, reg_timer0_conf_bits
# ../common/timer0.c:32: 	reg_timer0_conf_bits->EN = 0;
	.loc 1 32 27
	lbu	a4,0(a5)	# tmp76, reg_timer0_conf_bits.1_1->EN
	andi	a4,a4,-5	#, tmp77, tmp76
	sb	a4,0(a5)	# tmp78, reg_timer0_conf_bits.1_1->EN
	.loc 1 33 2 is_stmt 1
# ../common/timer0.c:33: 	reg_timer0_conf_bits->GO = 0;
	.loc 1 33 22 is_stmt 0
	lui	a5,%hi(reg_timer0_conf_bits)	# tmp79,
	lw	a5,%lo(reg_timer0_conf_bits)(a5)		# reg_timer0_conf_bits.2_2, reg_timer0_conf_bits
# ../common/timer0.c:33: 	reg_timer0_conf_bits->GO = 0;
	.loc 1 33 27
	lbu	a4,0(a5)	# tmp81, reg_timer0_conf_bits.2_2->GO
	andi	a4,a4,-3	#, tmp82, tmp81
	sb	a4,0(a5)	# tmp83, reg_timer0_conf_bits.2_2->GO
# ../common/timer0.c:34: }
	.loc 1 34 1
	nop	
	lw	s0,12(sp)		#,
	.cfi_restore 8
	addi	sp,sp,16	#,,
	.cfi_def_cfa_register 2
	jr	ra		#
	.cfi_endproc
.LFE2:
	.size	TMR0_StopTimer, .-TMR0_StopTimer
	.align	1
	.globl	TMR0_ISR
	.type	TMR0_ISR, @function
TMR0_ISR:
.LFB3:
	.loc 1 39 1 is_stmt 1
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)	#,
	sw	s0,8(sp)	#,
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
	.loc 1 40 2
# ../common/timer0.c:40: 	reg_timer0_conf_bits->INT_TMR = 0;
	.loc 1 40 22 is_stmt 0
	lui	a5,%hi(reg_timer0_conf_bits)	# tmp75,
	lw	a5,%lo(reg_timer0_conf_bits)(a5)		# reg_timer0_conf_bits.3_1, reg_timer0_conf_bits
# ../common/timer0.c:40: 	reg_timer0_conf_bits->INT_TMR = 0;
	.loc 1 40 32
	lbu	a4,0(a5)	# tmp77, reg_timer0_conf_bits.3_1->INT_TMR
	andi	a4,a4,-2	#, tmp78, tmp77
	sb	a4,0(a5)	# tmp79, reg_timer0_conf_bits.3_1->INT_TMR
	.loc 1 42 2 is_stmt 1
# ../common/timer0.c:42: 	if(TMR0_InterruptHandler) {
	.loc 1 42 5 is_stmt 0
	lui	a5,%hi(TMR0_InterruptHandler)	# tmp80,
	lw	a5,%lo(TMR0_InterruptHandler)(a5)		# TMR0_InterruptHandler.4_2, TMR0_InterruptHandler
# ../common/timer0.c:42: 	if(TMR0_InterruptHandler) {
	.loc 1 42 4
	beqz	a5,.L6	#, TMR0_InterruptHandler.4_2,
	.loc 1 43 3 is_stmt 1
	lui	a5,%hi(TMR0_InterruptHandler)	# tmp81,
	lw	a5,%lo(TMR0_InterruptHandler)(a5)		# TMR0_InterruptHandler.5_3, TMR0_InterruptHandler
	jalr	a5		# TMR0_InterruptHandler.5_3
.LVL5:
.L6:
# ../common/timer0.c:45: }
	.loc 1 45 1 is_stmt 0
	nop	
	lw	ra,12(sp)		#,
	.cfi_restore 1
	lw	s0,8(sp)		#,
	.cfi_restore 8
	addi	sp,sp,16	#,,
	.cfi_def_cfa_register 2
	jr	ra		#
	.cfi_endproc
.LFE3:
	.size	TMR0_ISR, .-TMR0_ISR
	.align	1
	.globl	TMR0_WriteTimer
	.type	TMR0_WriteTimer, @function
TMR0_WriteTimer:
.LFB4:
	.loc 1 48 1 is_stmt 1
	.cfi_startproc
.LVL6:
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)	#,
	.cfi_offset 8, -4
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)	# timerVal, timerVal
	.loc 1 49 2
	li	a5,1048576		# tmp73,
	addi	a5,a5,28	#, _1, tmp73
# ../common/timer0.c:49: 	reg_timer0 = timerVal;
	.loc 1 49 13 is_stmt 0
	lw	a4,-20(s0)		# tmp74, timerVal
	sw	a4,0(a5)	# tmp74, *_1
# ../common/timer0.c:50: }
	.loc 1 50 1
	nop	
	lw	s0,28(sp)		#,
	.cfi_restore 8
	addi	sp,sp,32	#,,
	.cfi_def_cfa_register 2
	jr	ra		#
	.cfi_endproc
.LFE4:
	.size	TMR0_WriteTimer, .-TMR0_WriteTimer
	.align	1
	.globl	TMR0_clear_int_flag
	.type	TMR0_clear_int_flag, @function
TMR0_clear_int_flag:
.LFB5:
	.loc 1 54 1 is_stmt 1
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)	#,
	.cfi_offset 8, -4
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
	.loc 1 55 2
# ../common/timer0.c:55: 	reg_timer0_conf_bits->INT_TMR = 0;
	.loc 1 55 22 is_stmt 0
	lui	a5,%hi(reg_timer0_conf_bits)	# tmp73,
	lw	a5,%lo(reg_timer0_conf_bits)(a5)		# reg_timer0_conf_bits.6_1, reg_timer0_conf_bits
# ../common/timer0.c:55: 	reg_timer0_conf_bits->INT_TMR = 0;
	.loc 1 55 32
	lbu	a4,0(a5)	# tmp75, reg_timer0_conf_bits.6_1->INT_TMR
	andi	a4,a4,-2	#, tmp76, tmp75
	sb	a4,0(a5)	# tmp77, reg_timer0_conf_bits.6_1->INT_TMR
# ../common/timer0.c:56: }
	.loc 1 56 1
	nop	
	lw	s0,12(sp)		#,
	.cfi_restore 8
	addi	sp,sp,16	#,,
	.cfi_def_cfa_register 2
	jr	ra		#
	.cfi_endproc
.LFE5:
	.size	TMR0_clear_int_flag, .-TMR0_clear_int_flag
	.align	1
	.globl	TMR0_is_done
	.type	TMR0_is_done, @function
TMR0_is_done:
.LFB6:
	.loc 1 59 1 is_stmt 1
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)	#,
	.cfi_offset 8, -4
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
	.loc 1 60 2
# ../common/timer0.c:60: 	return (reg_timer0_conf_bits->INT_TMR ? true : false);
	.loc 1 60 30 is_stmt 0
	lui	a5,%hi(reg_timer0_conf_bits)	# tmp76,
	lw	a5,%lo(reg_timer0_conf_bits)(a5)		# reg_timer0_conf_bits.7_1, reg_timer0_conf_bits
	lw	a5,0(a5)		# tmp79, *reg_timer0_conf_bits.7_1
	andi	a5,a5,1	#, tmp80, tmp78
	andi	a5,a5,0xff	# _2, tmp80
# ../common/timer0.c:61: }
	.loc 1 61 1
	mv	a0,a5	#, <retval>
	lw	s0,12(sp)		#,
	.cfi_restore 8
	addi	sp,sp,16	#,,
	.cfi_def_cfa_register 2
	jr	ra		#
	.cfi_endproc
.LFE6:
	.size	TMR0_is_done, .-TMR0_is_done
	.align	1
	.globl	TMR0_SetInterruptHandler
	.type	TMR0_SetInterruptHandler, @function
TMR0_SetInterruptHandler:
.LFB7:
	.loc 1 63 63 is_stmt 1
	.cfi_startproc
.LVL7:
	addi	sp,sp,-32	#,,
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)	#,
	.cfi_offset 8, -4
	addi	s0,sp,32	#,,
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)	# InterruptHandler, InterruptHandler
	.loc 1 64 5
# ../common/timer0.c:64:     TMR0_InterruptHandler = InterruptHandler;
	.loc 1 64 27 is_stmt 0
	lui	a5,%hi(TMR0_InterruptHandler)	# tmp72,
	lw	a4,-20(s0)		# tmp73, InterruptHandler
	sw	a4,%lo(TMR0_InterruptHandler)(a5)	# tmp73, TMR0_InterruptHandler
# ../common/timer0.c:65: }
	.loc 1 65 1
	nop	
	lw	s0,28(sp)		#,
	.cfi_restore 8
	addi	sp,sp,32	#,,
	.cfi_def_cfa_register 2
	jr	ra		#
	.cfi_endproc
.LFE7:
	.size	TMR0_SetInterruptHandler, .-TMR0_SetInterruptHandler
	.align	1
	.globl	TMR0_DefaultInterruptHandler
	.type	TMR0_DefaultInterruptHandler, @function
TMR0_DefaultInterruptHandler:
.LFB8:
	.loc 1 67 40 is_stmt 1
	.cfi_startproc
	addi	sp,sp,-16	#,,
	.cfi_def_cfa_offset 16
	sw	s0,12(sp)	#,
	.cfi_offset 8, -4
	addi	s0,sp,16	#,,
	.cfi_def_cfa 8, 0
	.loc 1 70 1
	nop	
	lw	s0,12(sp)		#,
	.cfi_restore 8
	addi	sp,sp,16	#,,
	.cfi_def_cfa_register 2
	jr	ra		#
	.cfi_endproc
.LFE8:
	.size	TMR0_DefaultInterruptHandler, .-TMR0_DefaultInterruptHandler
.Letext0:
	.file 2 "/opt/riscv32i/riscv32-unknown-elf/include/machine/_default_types.h"
	.file 3 "/opt/riscv32i/riscv32-unknown-elf/include/sys/_stdint.h"
	.file 4 "../common/vargen.h"
	.file 5 "../common/timer0.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2ee
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF39
	.byte	0xc
	.4byte	.LASF40
	.4byte	.LASF41
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
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x5
	.byte	0x6
	.byte	0xe
	.4byte	0x1cd
	.byte	0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0xd
	.string	"GO"
	.byte	0x2
	.byte	0xd
	.string	"EN"
	.byte	0x4
	.byte	0xc
	.4byte	.LASF25
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0xb
	.byte	0x3
	.4byte	0x1a8
	.byte	0xe
	.byte	0x8
	.4byte	.LASF27
	.byte	0x5
	.byte	0xd
	.byte	0xf
	.4byte	0x1e6
	.byte	0x9
	.byte	0x4
	.4byte	0x1d9
	.byte	0xf
	.4byte	0x1da
	.byte	0x1
	.byte	0x6
	.byte	0x8
	.byte	0x5
	.byte	0x3
	.4byte	TMR0_InterruptHandler
	.byte	0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x43
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.byte	0x11
	.4byte	.LASF31
	.byte	0x1
	.byte	0x3f
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x231
	.byte	0x12
	.4byte	.LASF33
	.byte	0x1
	.byte	0x3f
	.byte	0x27
	.4byte	0x1e6
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x13
	.4byte	.LASF42
	.byte	0x1
	.byte	0x3a
	.byte	0x6
	.4byte	0x247
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF28
	.byte	0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0x35
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.byte	0x11
	.4byte	.LASF32
	.byte	0x1
	.byte	0x2f
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x285
	.byte	0x12
	.4byte	.LASF34
	.byte	0x1
	.byte	0x2f
	.byte	0x1f
	.4byte	0x77
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x14
	.4byte	.LASF35
	.byte	0x1
	.byte	0x26
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.byte	0x10
	.4byte	.LASF36
	.byte	0x1
	.byte	0x1e
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.byte	0x10
	.4byte	.LASF37
	.byte	0x1
	.byte	0x16
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.byte	0x15
	.4byte	.LASF43
	.byte	0x1
	.byte	0x8
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x16
	.4byte	.LASF38
	.byte	0x1
	.byte	0x8
	.byte	0x22
	.4byte	0x1cd
	.4byte	.LLST0
	.byte	0x17
	.4byte	.LVL2
	.4byte	0x20c
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	TMR0_DefaultInterruptHandler
	.byte	0
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
	.byte	0xc
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-.Ltext0
	.4byte	.LVL2-1-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL2-1-.Ltext0
	.4byte	.LVL3-.Ltext0
	.2byte	0x2
	.byte	0x78
	.byte	0x6c
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x2
	.byte	0x72
	.byte	0xc
	.4byte	.LVL4-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
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
.LASF34:
	.string	"timerVal"
.LASF35:
	.string	"TMR0_ISR"
.LASF24:
	.string	"reg_timer0_conf_bits"
.LASF28:
	.string	"_Bool"
.LASF19:
	.string	"reg_intflags_bits"
.LASF31:
	.string	"TMR0_SetInterruptHandler"
.LASF39:
	.string	"GNU C17 8.2.0 -march=rv32imc -mabi=ilp32 -g -O3"
.LASF42:
	.string	"TMR0_is_done"
.LASF1:
	.string	"unsigned char"
.LASF27:
	.string	"TMR0_InterruptHandler"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF36:
	.string	"TMR0_StopTimer"
.LASF21:
	.string	"INT_TMR"
.LASF37:
	.string	"TMR0_StartTimer"
.LASF14:
	.string	"INTFLAGS_bits_s"
.LASF15:
	.string	"RXIE"
.LASF11:
	.string	"RXIF"
.LASF9:
	.string	"__uint32_t"
.LASF30:
	.string	"TMR0_clear_int_flag"
.LASF8:
	.string	"unsigned int"
.LASF38:
	.string	"conf"
.LASF7:
	.string	"long long unsigned int"
.LASF33:
	.string	"InterruptHandler"
.LASF32:
	.string	"TMR0_WriteTimer"
.LASF17:
	.string	"TMR0IE"
.LASF13:
	.string	"TMR0IF"
.LASF20:
	.string	"reg_intcon_bits"
.LASF6:
	.string	"long long int"
.LASF43:
	.string	"TMR0_Initialize"
.LASF29:
	.string	"TMR0_DefaultInterruptHandler"
.LASF23:
	.string	"TIMER0_CONF_bits_s"
.LASF18:
	.string	"INTCON_bits_s"
.LASF2:
	.string	"short int"
.LASF25:
	.string	"AUTO_LOAD"
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
.LASF41:
	.string	"/home/saul/projects/tinyfpga/gcc_tests/c_timer"
.LASF40:
	.string	"../common/timer0.c"
.LASF26:
	.string	"TMR0_Config"
	.ident	"GCC: (GNU) 8.2.0"
