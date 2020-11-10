/*
 * main.c
 *
 *  Created on: Nov 10, 2020
 *      Author: saul
 */

#include "hardware.h"
#include "spi1.h"


int main()
{
	unsigned char aux, rec;

	SPI1_Initialize();

	aux = 0xa0;
	while(1) {
		rec = SPI1_ExchangeByte(aux);
		aux++;
		reg_porta = rec;
	}
}

