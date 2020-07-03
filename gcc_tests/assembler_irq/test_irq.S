#include "custom_ops.S"
			.equ IRQ_5, 0x0020
			.equ IRQ_6, 0x0040
			.equ IRQ_7, 0x0080
			
			.equ PORTA, 0x00100000
			
			.section .text

reset_vec:
			# no more than 8 bytes here !
			j start

			.balign 16
irq_vec:	
			//
			li t0, PORTA
			li t1, 0xee
			sw t1, 0(t0)
			//

			//picorv32_setq_insn(q2, ra)  //save return address
			//picorv32_setq_insn(q3, sp)  //save stack			
			
			picorv32_getq_insn(a0, q1) // get the irq mask and store it in a0
			
			jal irq_handler
			
			//
			li t0, PORTA
			li t1, 0xff
			sw t1, 0(t0)
			//
			picorv32_retirq_insn()
		
start:
			#initialize interrupts
			#picorv32_waitirq_insn(zero)
			picorv32_maskirq_insn(zero, zero)

			li t0, PORTA
			li t1, 0xaa
			sw t1, 0(t0)

loop:		j loop
			
irq_handler:
			addi sp, sp, -16 //Reserve 4 words in the pile
			sw ra, 12(sp) //save return address
			
			//Check the source of the interrupt 
			li t0, IRQ_5 		// t0 = IRQ_5
			and t1,a0,t0		// t1 = a0 & t0
			
			bne t0,a0,else1		// if (t0 == a0) {			
			
			li t0, PORTA
			li t1, IRQ_5
			sw t1, 0(t0)		// } else ...
else1:
			li t0, IRQ_6 		// t0 = IRQ_6
			and t1,a0,t0		// t1 = a0 & t0
			
			bne t0,a0,else2		// if (t0 == a0) {			
			
			li t0, PORTA
			li t1, IRQ_6
			sw t1, 0(t0)
else2:			
			li t0, IRQ_7 		// t0 = IRQ_7
			and t1,a0,t0		// t1 = a0 & t0
			
			bne t0,a0,else3		// if (t0 == a0) {			
			
			li t0, PORTA
			li t1, IRQ_7
			sw t1, 0(t0)
else3:
			//recover return address and stack
			lw ra, 12(sp)
			addi sp, sp, 16
			ret
			



		

