//delay.h

#ifndef DELAY_H
#define DELAY_H

// CLK_FREQ must be defined before delay.h is read

#ifndef CLK_FREQ
	#warning "CLK_FREQ undefined, assuming Tinyfpga's clk 16 MHz"
	#define CLK_FREQ 16000000		
#endif

/* delay_cycles 
 The following timing is obtained when compiling with -O3 optimization:
 18 clk_cycles total overhead 
 11 clk_cycles per loop itertion 
*/

void delay_cycles_11(unsigned int numLoop) 
{
					 
	asm volatile("1: 		beq %[anumLoop],zero,2f\n"
				 "			addi %[anumLoop],%[anumLoop],-1\n"
				 "	     	j 1b\n"
				 "2:\n"
				 : [anumLoop] "+r" (numLoop));

}

#define CYCLES_PER_LOOP 11

#define __delay_us(time_us) {\
						delay_cycles_11((time_us*CLK_FREQ)/1000000/CYCLES_PER_LOOP); \
					}

#define __delay_ms(time_ms) {\
						delay_cycles_11((time_ms*CLK_FREQ)/1000/CYCLES_PER_LOOP); \
					}



#endif
