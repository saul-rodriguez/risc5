//test_irq.c

#include "hardware.h"

//extern uint32_t sram;

int main() 
{
	//unsigned char flag;
	unsigned char rec;
	
	EUSART1_Initialize();

	//uncomment the following lines for verilog testbench
	//EUSART1_Write(0xaa);
	//EUSART1_Write(0x5b);
	//EUSART1_Write(0xcc);
				
	while(1) {	
		if (EUSART1_is_rx_ready()) {			
			rec = EUSART1_Read();			
			EUSART1_Write(rec);
		}				
	}
}

