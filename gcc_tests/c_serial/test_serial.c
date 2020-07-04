//test_irq.c

#include "hardware.h"

//extern uint32_t sram;

int main() 
{
	//unsigned char flag;
	unsigned char rec;
	
	EUSART1_Initialize();

	//uncomment the following lines for verilog testbench
	EUSART1_Write(0xaa);
	EUSART1_Write(0x5b);
	EUSART1_Write(0xcc);
	reg_porta = 0x77; // @suppress("Type cannot be resolved")
				
	while(1) {	
		if (EUSART1_is_rx_ready()) {			
			rec = EUSART1_Read();
			reg_porta = rec; // @suppress("Type cannot be resolved")
			EUSART1_Write(rec);
		}				
	}
}

