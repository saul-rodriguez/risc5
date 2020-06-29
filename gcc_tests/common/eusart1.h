//eusart1.h

#ifndef EUSART1_H
#define EUSART1_H

#include "vargen.h"

#ifndef UART_CONF_VAL
	#error "UART_CONF must be defined before eusart1.h is read"
#endif

void EUSART1_Initialize(void);

bool EUSART1_is_tx_ready(void);
bool EUSART1_is_rx_ready(void);
bool EUSART1_is_tx_done(void);
uint8_t EUSART1_Read(void);
void EUSART1_Write(uint8_t txData);
void EUSART1_Transmit_ISR(void);
void EUSART1_Receive_ISR(void);
void EUSART1_RxDataHandler(void);
void EUSART1_SetTxInterruptHandler(void (* interruptHandler)(void));
void EUSART1_SetRxInterruptHandler(void (* interruptHandler)(void));




#endif 

