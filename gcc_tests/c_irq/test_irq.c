//test_irq.c

#include <stdint.h>
#include <stdbool.h>

#include "../common/vargen.h"

//extern uint32_t sram;

//Memory mapped peripherals definitions
/*
#define reg_porta (*(volatile uint32_t*) 0x00100000) // 8 bit digital output
#define reg_portb (*(volatile uint32_t*) 0x00100004) // 8 bit digital input

#define IRQ_5 0x00000020
#define IRQ_6 0x00000040
#define IRQ_7 0x00000080
*/

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

