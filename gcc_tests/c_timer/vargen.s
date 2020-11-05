	.file	"vargen.c"
	.option nopic
# GNU C17 (GCC) version 8.2.0 (riscv32-unknown-elf)
#	compiled by GNU C version 7.5.0, GMP version 6.1.2, MPFR version 4.0.1, MPC version 1.1.0, isl version none
# GGC heuristics: --param ggc-min-expand=30 --param ggc-min-heapsize=4096
# options passed:  ../common/vargen.c -march=rv32imc -mabi=ilp32 -g -O3
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
	.globl	reg_timer0_conf_bits
	.globl	reg_intflags_bits
	.globl	reg_intcon_bits
	.section	.sdata,"aw"
	.align	2
	.type	reg_timer0_conf_bits, @object
	.size	reg_timer0_conf_bits, 4
reg_timer0_conf_bits:
	.word	1048608
	.type	reg_intflags_bits, @object
	.size	reg_intflags_bits, 4
reg_intflags_bits:
	.word	1048580
	.type	reg_intcon_bits, @object
	.size	reg_intcon_bits, 4
reg_intcon_bits:
	.word	1048576
	.text
.Letext0:
	.file 1 "../common/vargen.h"
	.file 2 "../common/vargen.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1af
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF23
	.byte	0xc
	.4byte	.LASF24
	.4byte	.LASF25
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
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x3c
	.byte	0x9
	.4byte	0x9d
	.byte	0x5
	.4byte	.LASF9
	.byte	0x1
	.byte	0x3d
	.byte	0xc
	.4byte	0x5c
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.byte	0x5
	.4byte	.LASF10
	.byte	0x1
	.byte	0x3e
	.byte	0xc
	.4byte	0x5c
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.byte	0x5
	.4byte	.LASF11
	.byte	0x1
	.byte	0x3f
	.byte	0xc
	.4byte	0x5c
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x40
	.byte	0x3
	.4byte	0x63
	.byte	0x7
	.4byte	0x9d
	.byte	0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x42
	.byte	0x22
	.4byte	0xba
	.byte	0x9
	.byte	0x4
	.4byte	0xa9
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x44
	.byte	0x9
	.4byte	0xfa
	.byte	0x5
	.4byte	.LASF12
	.byte	0x1
	.byte	0x45
	.byte	0xc
	.4byte	0x5c
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.byte	0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0x46
	.byte	0xc
	.4byte	0x5c
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.byte	0x5
	.4byte	.LASF14
	.byte	0x1
	.byte	0x47
	.byte	0xc
	.4byte	0x5c
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	.LASF16
	.byte	0x1
	.byte	0x48
	.byte	0x3
	.4byte	0xc0
	.byte	0x7
	.4byte	0xfa
	.byte	0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0x4a
	.byte	0x20
	.4byte	0x117
	.byte	0x9
	.byte	0x4
	.4byte	0x106
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x4c
	.byte	0x9
	.4byte	0x165
	.byte	0x5
	.4byte	.LASF19
	.byte	0x1
	.byte	0x4d
	.byte	0xc
	.4byte	0x5c
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.byte	0xa
	.string	"GO"
	.byte	0x1
	.byte	0x4e
	.byte	0xc
	.4byte	0x5c
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.byte	0xa
	.string	"EN"
	.byte	0x1
	.byte	0x4f
	.byte	0xc
	.4byte	0x5c
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.byte	0x5
	.4byte	.LASF20
	.byte	0x1
	.byte	0x50
	.byte	0xc
	.4byte	0x5c
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0x6
	.4byte	.LASF21
	.byte	0x1
	.byte	0x51
	.byte	0x3
	.4byte	0x11d
	.byte	0x7
	.4byte	0x165
	.byte	0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x53
	.byte	0x25
	.4byte	0x182
	.byte	0x9
	.byte	0x4
	.4byte	0x171
	.byte	0xb
	.4byte	0x10b
	.byte	0x2
	.byte	0x8
	.byte	0x19
	.byte	0x5
	.byte	0x3
	.4byte	reg_intcon_bits
	.byte	0xb
	.4byte	0xae
	.byte	0x2
	.byte	0x9
	.byte	0x1b
	.byte	0x5
	.byte	0x3
	.4byte	reg_intflags_bits
	.byte	0xb
	.4byte	0x176
	.byte	0x2
	.byte	0xa
	.byte	0x1e
	.byte	0x5
	.byte	0x3
	.4byte	reg_timer0_conf_bits
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
	.byte	0x4
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
	.byte	0x5
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
	.byte	0x6
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
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"reg_timer0_conf_bits"
.LASF17:
	.string	"reg_intflags_bits"
.LASF23:
	.string	"GNU C17 8.2.0 -march=rv32imc -mabi=ilp32 -g -O3"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF19:
	.string	"INT_TMR"
.LASF15:
	.string	"INTFLAGS_bits_s"
.LASF12:
	.string	"RXIE"
.LASF9:
	.string	"RXIF"
.LASF8:
	.string	"unsigned int"
.LASF24:
	.string	"../common/vargen.c"
.LASF7:
	.string	"long long unsigned int"
.LASF14:
	.string	"TMR0IE"
.LASF11:
	.string	"TMR0IF"
.LASF18:
	.string	"reg_intcon_bits"
.LASF6:
	.string	"long long int"
.LASF21:
	.string	"TIMER0_CONF_bits_s"
.LASF16:
	.string	"INTCON_bits_s"
.LASF2:
	.string	"short int"
.LASF13:
	.string	"TXIE"
.LASF10:
	.string	"TXIF"
.LASF4:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF20:
	.string	"AUTO_LD"
.LASF25:
	.string	"/home/saul/projects/tinyfpga/gcc_tests/c_timer"
	.ident	"GCC: (GNU) 8.2.0"
