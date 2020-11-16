/*
 * spi1.c
 *
 *  Created on: Nov 10, 2020
 *      Author: saul
 */

#include "spi1.h"

//volatile unsigned char token;

void SPI1_Initialize(uint16_t clks_per_half_bit)
{
	reg_spi_master_conf_bits->CS = 1;
	reg_spi_master_conf_bits->CLKS_PER_HLF_BIT = clks_per_half_bit;
	reg_intcon_bits->SPIIE = 0;
}


uint8_t SPI1_ExchangeByte(uint8_t data)
{
	//volatile unsigned char aux;
	reg_spi_master = data;
	while(!reg_intflags_bits->SPIIF);
//	do {
//		token = reg_intflags_bits->SPIIF;
//	} while(token == 0);

	return reg_spi_master;
	//return 0;
}




