//test_irq.c

#include "../common/vargen.h"
#include "../common/eusart1.h"

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
	unsigned char flag;
	unsigned char aux,rec;
	
	EUSART1_Initialize();
	
	/*
	reg_intcon_bits->RXIE = 1;
	reg_intcon_bits->TXIE = 1;
	reg_intcon_bits->TMR0IE = 1;
	
	reg_porta = reg_intcon_bits->RXIE;
	*/
	
	//volatile INTCON_bits_s *beta;
	
	//alfa.INTCON_reg = (uint32_t*)(INTCON);
	//alfa.INTCON_bits->RXIF = 1;
	
	//beta = (INTCON_bits_s*)(0x00100014);
	//beta->RXIF = 0;
		
	//reg_porta = 0xab;
	
	//reg_uart_conf = UART_CONF_VAL;
	
	//aux = 0xab;
		/*
	while(1) {
		flag = (unsigned char)(reg_intflags & UART_TX_IF);
		if (flag) {
			reg_uart_tx = aux++;
		}
		
		flag = (unsigned char)(reg_intflags & UART_RX_IF);
		if (flag) {
			rec = reg_uart_rx;
			reg_porta = rec;
		}
		
	}*/
		
	
	
	
	while(1) {
		//*(alfa)->RXIF = 1;
		//*(alfa)->RXIF = 0;		
	}
	
	/*
	while(1) {
		if (reg_intflags & UART_RX_IF) {
			rec = reg_uart_rx;
			
			while(!(reg_intflags & UART_TX_IF)) {
			};
			
			reg_uart_tx = rec;
		}
		
	}
	*/
	
}

