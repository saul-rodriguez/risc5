//test_irq.c

#include <stdint.h>
#include <stdbool.h>

//extern uint32_t sram;

//Memory mapped peripherals definitions
#define reg_porta     (*(volatile uint32_t*) 0x00100000) // 8 bit digital output
#define reg_portb     (*(volatile uint32_t*) 0x00100004) // 8 bit digital input
#define reg_uart_tx   (*(volatile uint32_t*) 0x00100008) // 8bit tx uart
#define reg_uart_rx   (*(volatile uint32_t*) 0x0010000c) // 8bit rx uart
#define reg_uart_conf (*(volatile uint32_t*) 0x00100010) // 8 bit interrupt enable configuration
#define reg_intcon    (*(volatile uint32_t*) 0x00100014) // 8 bit interrupt enable configuration
#define reg_intflags  (*(volatile uint32_t*) 0x00100018) // 8 bit interrupt flags


#define IRQ_5 0x00000020
#define IRQ_6 0x00000040
#define IRQ_7 0x00000080

#define UART_RX_IF 0x01
#define UART_TX_IF 0x02

#define CLK_FREQ 16000000
#define BRATE 9600

#define UART_CONF (CLK_FREQ/BRATE)

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
	
	reg_uart_conf = UART_CONF;
	
	aux = 0xab;
		
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
		
	}
}

