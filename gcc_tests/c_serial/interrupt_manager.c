//interrupt_manager.c
#include "interrupt_manager.h"
#include "hardware.h"

void irq(uint32_t irqs)
{
	//reg_porta = 0xbb;
		
	if (reg_intcon_bits->TXIE == 1 && reg_intflags_bits->TXIF == 1) {           
            EUSART1_Transmit_ISR();
    } else if (reg_intcon_bits->RXIE == 1 && reg_intflags_bits->RXIF == 1) {            
            EUSART1_RxDataHandler();            
    }
    //reg_porta = 0xcc;
      
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
