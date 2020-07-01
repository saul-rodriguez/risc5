//test_irq.c

#include "hardware.h"

//extern uint32_t sram;

int main() 
{
	//unsigned char flag;
	unsigned char rec;
	
	EUSART1_Initialize();
			
	while(1) {	
		if (EUSART1_is_rx_ready()) {			
			rec = EUSART1_Read();			
			EUSART1_Write(rec);
		}				
	}
}

