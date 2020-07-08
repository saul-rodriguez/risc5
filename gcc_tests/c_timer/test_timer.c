//test_irq.c

#include "hardware.h"

//extern uint32_t sram;
#define TIMER_VALUE 0xfffffff0

int main() 
{
	//unsigned char flag;
	unsigned char aux;
	
	TMR0_Initialize(EN);
	//TMR0_Initialize(EN | AUTO_LOAD);
	TMR0_WriteTimer(TIMER_VALUE);

	TMR0_StartTimer(); //it is the same as reg_timer0_conf_bits->GO = 1;

	aux = 0xf0;
	while(1) {
		/* Use of timer0 med polling */

		/*//Direct use of registers
		if (reg_timer0_conf_bits->INT_TMR) {
			reg_timer0_conf_bits->INT_TMR = 0; //Clear timer flag
			reg_timer0_conf_bits->GO = 1; //manual restart (disabled autoload)
			reg_porta = aux++;
		}

		// the timer flag is also available in reg_intflags_bits->TMR0IF
		if (reg_intflags_bits->TMR0IF) {
					reg_timer0_conf_bits->INT_TMR = 0; //Clear timer flag
					reg_timer0_conf_bits->GO = 1; //manual restart (disabled autoload)
					reg_porta = aux++;
		}*/

		// Use of inline functions instead of config registers
		if (TMR0_is_done()) {
							TMR0_clear_int_flag();
							TMR0_StartTimer(); //manual restart (disabled autoload)
							reg_porta = aux++;
		}

	}

}

