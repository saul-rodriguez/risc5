#include "timer0.h"

void TMR0_Initialize(TMR0_Config conf)
{

	reg_timer0_conf = conf;

	//reg_timer0_conf_bits->INT_TMR = 0;0
	//reg_timer0_conf_bits->GO = 0;
	//reg_timer0_conf_bits->EN = 1;
	//reg_timer0_conf_bits->AUTO_LOAD = 0;


}

void TMR0_StartTimer(void)
{
	reg_timer0_conf_bits->GO = 1;
}


void TMR0_StopTimer(void)
{
	reg_timer0_conf_bits->EN = 0;
	reg_timer0_conf_bits->EN = 1;
}

void TMR0_ISR(void)
{

}

void TMR0_WriteTimer(uint32_t timerVal)
{
	reg_timer0 = timerVal;
}


void TMR0_clear_int_flag(void)
{
	reg_timer0_conf_bits->INT_TMR = 0;
}


bool TMR0_is_done(void)
{
	return (reg_timer0_conf_bits->INT_TMR ? true : false);
}



