//test_irq.c

#include <stdint.h>
#include <stdbool.h>

#include "../common/vargen.h"

//extern uint32_t sram;

void irq(uint32_t irqs) // @suppress("Type cannot be resolved")
{
	if (irqs & IRQ_5) {
		reg_porta = IRQ_5;
	} 
	
	if (irqs & IRQ_6) {
		reg_porta = IRQ_6;		
	}

	if (irqs & IRQ_7) {
		reg_porta = IRQ_7;
	}		
	
}


void main() 
{
	while(1) {
	}
}

