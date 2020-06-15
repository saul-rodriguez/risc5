//test_irq.S

#include "custom_ops.S"

			.section .text

reset_vec:
			// no more than 8 bytes here !
			j start

			.balign 16
irq_vec:	

start:

