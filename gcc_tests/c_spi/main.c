/*
 * main.c
 *
 *  Created on: Nov 10, 2020
 *      Author: saul
 */

#include "hardware.h"
//#include "spi1.h"

#include "mcp23s17.h"


int main()
{
	unsigned char aux, rec;


	SPI1_Initialize(CLKS_PER_HALF_BIT);

	MCP23S17_setAddress(0x20);
	//MCP23S17_setTrisA(0x00);

/*
	//Test exchange byte in loop back test
	aux = 0;
	rec = 0;
	while(1) {

		rec = SPI1_ExchangeByte(aux);
		reg_porta = aux;
		aux++;
		//reg_spi_master = aux;
		//while(!reg_intflags_bits->SPIIF);
		//reg_porta = rec;
	//	reg_spi_master_conf_bits->CS = 0;
		//reg_spi_master = aux;
		//reg_porta = reg_intflags;
		//reg_spi_master_conf_bits->CS = 1;


		//aux++;

	}
*/


	// Test port expander
	aux = 0xff;
	while(1) {
		if (reg_portb_bits->B0) {
			disable_interrupts();
			MCP23S17_writePortA(aux);
			enable_interrupts();
			reg_porta = aux;
			aux++;
			__delay_ms(50);
		}

	}

}


