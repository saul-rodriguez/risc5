//vargen.h

#ifndef VARGEN_H
#define VARGEN_H

#include <stdint.h>
#include <stdbool.h>

//Memory mapped peripherals definitions

//interrupt configuration register
#define INTCON	  0x00100000

//Interrupt flags
#define INTFLAGS  0x00100004

//uart registers
#define UART_TX   0x00100008
#define UART_RX   0x0010000c
#define UART_CONF 0x00100010

//input porta
#define PORTA	0x00100014
//#define PORTA_WIDTH 8
 
//output porta
#define PORTB	0x00100018
//#define PORTB_WIDTH 8

//timer0 registers
#define TIMER0 			0x0010001c
#define TIMER0_CONF		0x00100020

//SPI master
#define SPI_MST		 	0x00100024
#define SPI_MST_CONF 	0x00100028


// registers definitions
#define reg_porta     		(*(volatile uint32_t*) PORTA) // 8-bit digital output
#define reg_portb     		(*(volatile uint32_t*) PORTB) // 8-bit digital input
#define reg_uart_tx   		(*(volatile uint32_t*) UART_TX) // 8-bit tx uart
#define reg_uart_rx   		(*(volatile uint32_t*) UART_RX) // 8-bit rx uart
#define reg_uart_conf 		(*(volatile uint32_t*) UART_CONF) // 12-bit uart configuration
#define reg_intcon    		(*(volatile uint32_t*) INTCON) // 8-bit interrupt enable configuration
#define reg_intflags  		(*(volatile uint32_t*) INTFLAGS) // 8-bit interrupt flags
#define reg_timer0	  		(*(volatile uint32_t*) TIMER0) //32-bit timer value
#define reg_timer0_conf		(*(volatile uint32_t*) TIMER0_CONF) //8-bit timer configuration register
#define reg_spi_master		(*(volatile uint32_t*) SPI_MST)
#define reg_spi_master_conf (*(volatile uint32_t*) SPI_MST_CONF)


//External interrupts flags available in pircorv32 reg q0
//q0 is passed as parameter irqs in void irq(uint32_t irqs);
#define IRQ_5 0x00000020
#define IRQ_6 0x00000040
#define IRQ_7 0x00000080

//uart interrupts available in reg_intcon
#define UART_RX_IF 0x01
#define UART_TX_IF 0x02

//default configuration for the uart
#define CLK_FREQ 16000000
#define BRATE 9600

//Registers as bit structures

typedef struct {
		unsigned RXIF	:1;
		unsigned TXIF	:1;
		unsigned TMR0IF	:1;
		unsigned SPIIF	:1;
} INTFLAGS_bits_s;	

extern volatile INTFLAGS_bits_s* reg_intflags_bits;

typedef struct {
		unsigned RXIE	:1;
		unsigned TXIE	:1;
		unsigned TMR0IE	:1;
		unsigned SPIIE	:1;
} INTCON_bits_s;	

extern volatile INTCON_bits_s* reg_intcon_bits;

typedef struct {
		unsigned INT_TMR	:1;
		unsigned GO			:1;
		unsigned EN			:1;
		unsigned AUTO_LD	:1;
} TIMER0_CONF_bits_s;

extern volatile TIMER0_CONF_bits_s* reg_timer0_conf_bits;




#endif
