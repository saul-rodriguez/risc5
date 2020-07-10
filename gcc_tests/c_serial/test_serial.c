//test_irq.c

#include "hardware.h"
//#include "../common/delay.h"

//extern uint32_t sram;

int main() 
{
	//unsigned char flag;
	volatile uint8_t rec[3];
	unsigned int i;
	
	EUSART1_Initialize();

	//uncomment the following lines for verilog testbench
	EUSART1_Write(0xaa);
	EUSART1_Write(0xbb);
	EUSART1_Write(0xcc);
	reg_porta = eusart1TxBufferRemaining;

				
	while(1) {	

		reg_porta = 0x77;
		__delay_ms(4);
		reg_porta = 0x88;


		if (EUSART1_is_rx_ready()) {


			reg_porta = eusart1RxCount;
			rec[0] = EUSART1_Read();
			reg_porta = rec[0];
			rec[1] = EUSART1_Read();
			reg_porta = rec[1];
			rec[2] = EUSART1_Read();
			reg_porta = rec[2];

			EUSART1_Write(rec[0]);
			EUSART1_Write(rec[1]);
			EUSART1_Write(rec[2]);

		}

	}

}

