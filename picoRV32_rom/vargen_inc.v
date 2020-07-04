//vargen_inc.v

`ifndef VARGEN_INC_V
`define VARGEN_INC_V

/*					Memory MAP
 *      START            END          BLOCK		NOTES
 *	------------------------------------------------------------------------------
 *   32'h0000_0000 ... 32'h0000_03FF  DATA		0 to 256x4=1024 bytes (1 kbyte)
 *	 32'h0001_0000 ... 32'h000F_FFFF  PROGRAM	64436 (64kbytes) to 1048575 (1 Mbyte)  
 *	 32'h0010_0000 ... 32'hFFFF_FFFF  MMUP		1048576 to 2^32 -1
 *
 *   Mermory Mapped User Peripherals (MMUP) & Configuration registers
 *	 Name:		Address:		Description:
 *  -------------------------------------------------
 *   INTCON		32'h0010_0000   Interrupts configuration register 
 *   INTFLAGS	32'h0010_0004   User interrupts flags register 	
 * 	 UART_TX	32'h0010_0008	TX Data serial port (8-bit)	
 *	 UART_RX	32'h0010_000c	RX Data serial port (8-bit)
 *   UART_CONF	32'h0010_0010	UART Configuration register (12-bit)
 *	 PORTA		32'h0010_0014	8-bit Digital output	
 *	 PORTB		32'h0010_0018	8-bit Digital input
 * 
 */
  
	
 `define INTCON			32'h0010_0000
 `define INTFLAGS		32'h0010_0004
 `define UART_TX		32'h0010_0008
 `define UART_RX		32'h0010_000c
 `define UART_CONF		32'h0010_0010
 `define PORTA			32'h0010_0014
 `define PORTA_WIDTH 8
 `define PORTB			32'h0010_0018
 `define PORTB_WIDTH 8
    
    
// Interrupt bits order in INTCON and INTFLAG
//  B7      B6      B5      B4       B3      B2      B1      B0
//  -      -         -       -        -     TMR0   TX_UART RX_UART 


`endif

