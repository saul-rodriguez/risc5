/*
 * spi1.c
 *
 *  Created on: Nov 10, 2020
 *      Author: saul
 */

#include "spi1.h"

void SPI1_Initialize(void)
{
	reg_spi_master_conf_bits->CS = 1;
	reg_spi_master_conf_bits->CLKS_PER_HLF_BIT = CLKS_PER_HALF_BIT;
	//reg_spi_master_conf = 0x01000 | CLKS_PER_HALF_BIT;
	reg_intcon_bits->SPIIE = 0;
}

uint8_t SPI1_ExchangeByte(uint8_t data)
{
	reg_spi_master = data;
	while(!reg_intflags_bits->SPIIF);
	return reg_spi_master;
}

