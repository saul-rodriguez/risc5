//vargen.h

#ifndef VARGEN_H
#define VARGEN_H

#include <stdint.h>
#include <stdbool.h>

//Memory mapped peripherals definitions
#define PORTA	0x00100000
//#define PORTA_WIDTH 8
 
#define PORTB	0x00100004
//#define PORTB_WIDTH 8
 
#define UART_TX   0x00100008
#define UART_RX   0x0010000c
#define UART_CONF 0x00100010
 
#define INTCON	  0x00100014
#define INTFLAGS  0x00100018

#define reg_porta     (*(volatile uint32_t*) PORTA) // 8 bit digital output
#define reg_portb     (*(volatile uint32_t*) PORTB) // 8 bit digital input
#define reg_uart_tx   (*(volatile uint32_t*) UART_TX) // 8 bit tx uart
#define reg_uart_rx   (*(volatile uint32_t*) UART_RX) // 8 bit rx uart
#define reg_uart_conf (*(volatile uint32_t*) UART_CONF) // 12 bit uart configuration
#define reg_intcon    (*(volatile uint32_t*) INTCON) // 8 bit interrupt enable configuration
#define reg_intflags  (*(volatile uint32_t*) INTFLAGS) // 8 bit interrupt flags


#define IRQ_5 0x00000020
#define IRQ_6 0x00000040
#define IRQ_7 0x00000080

#define UART_RX_IF 0x01
#define UART_TX_IF 0x02

#define CLK_FREQ 16000000
#define BRATE 9600

#define UART_CONF_VAL (CLK_FREQ/BRATE)

typedef struct {
		unsigned RXIF	:1;
		unsigned TXIF	:1;
		unsigned TMR0IF	:1;
} INTFLAGS_bits_s;	

extern volatile INTFLAGS_bits_s* reg_intflags_bits;

typedef struct {
		unsigned RXIE	:1;
		unsigned TXIE	:1;
		unsigned TMR0IE	:1;
} INTCON_bits_s;	

extern volatile INTCON_bits_s* reg_intcon_bits;




#endif
