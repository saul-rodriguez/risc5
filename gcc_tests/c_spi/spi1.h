/*
 * spi1.h
 *
 *  Created on: Nov 10, 2020
 *      Author: saul
 */

#ifndef SPI1_H_
#define SPI1_H_

#include <stdint.h>
#include "hardware.h"

#define SPI_FREQ 1600000
#define CLKS_PER_HALF_BIT  ((CLK_FREQ/SPI_FREQ)/2)


void SPI1_Initialize(void);
uint8_t SPI1_ExchangeByte(uint8_t data);


#endif /* SPI1_H_ */
