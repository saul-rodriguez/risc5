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
	volatile unsigned char aux, rec;


	SPI1_Initialize(CLKS_PER_HALF_BIT);

	//Loop back test
	/*
	aux = 0xa0;
	reg_porta = aux;
	while(1) {


		//reg_spi_master_conf = 0;
		//reg_porta = 0x00;
		//reg_porta &= 0xfc;
		reg_spi_master_conf_bits->CS = 0;
		rec = SPI1_ExchangeByte(aux);
		reg_spi_master_conf_bits->CS = 1;
		//reg_porta |= 0x03;
		//reg_spi_master_conf = 0xffff;
		//reg_porta = 0xff;


		reg_porta = rec;
		aux++;
	} */


	//Test SPI with mcp23s17 port extender
	MCP23S17_setAddress(0x20);
	MCP23S17_setTrisA(0x00);

	aux = 0;
	while(1) {
		MCP23S17_writePortA(0xff);
	//	__delay_ms(100);
		MCP23S17_writePortA(0x00);
	//	reg_porta = aux++;
	//	__delay_ms(100);
	}
}


