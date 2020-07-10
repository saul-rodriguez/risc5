//test_delay.c

#include <stdint.h>
#include <stdbool.h>
#include "../common/vargen.h"
#include "../common/delay.h"

//extern uint32_t sram;

void irq(uint32_t irqs)
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
	int a;
		
	reg_intcon = 0x00;
	a = 10;
	
	while(1) {
		reg_porta = 0x00;
		//delay_cycles_11(a);
		//__delay_us(100);
		__delay_ms(1);
		reg_porta = 0xff;
		//__delay_us(100);
		__delay_ms(1);
		//delay_cycles_11(a);	
	}
	
}
