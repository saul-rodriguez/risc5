//vargen.c

#ifndef VARGEN_C
#define VARGEN_C

#include "vargen.h"

volatile INTCON_bits_s* reg_intcon_bits = (INTCON_bits_s*)(INTCON);
volatile INTFLAGS_bits_s* reg_intflags_bits = (INTFLAGS_bits_s*)(INTFLAGS);
volatile TIMER0_CONF_bits_s* reg_timer0_conf_bits = (TIMER0_CONF_bits_s*)(TIMER0_CONF);

#endif
