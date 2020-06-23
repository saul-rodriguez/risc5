//uart_tb.v
`timescale 1ns/1ps

`include "uart.v"

`define CLK_FREQ 16000000
`define BRATE 9600
`define END_SIM 36000
`define RX_UART_ADD 32'hcafe_babe

module uart_tb();

parameter N=`CLK_FREQ/`BRATE;

reg rstn;
reg clk;	
reg [11:0] clk_per_bit;
reg [31:0] addr;
reg wen;
reg [7:0] wdata; //data to be transmited	
reg mem_valid;
reg mem_ready;

wire uart_tx_ready, //Acknowledge that address has been read
wire tx_uart,
wire uart_tx_int_flag

UART_TX_PICO tx(
	.rstn(rstn),
	.clk(clk),
	
);
/*

reg       i_Rst_L;
reg       clk;
reg       i_TX_DV;
reg [7:0] i_TX_Byte; 
reg [11:0] i_Clk_per_bit;
wire  o_TX_Active;
wire  o_TX_Serial;
wire  o_TX_Done;

reg [31:0] address;
reg ren;
wire int_rx;

wire o_Rx_DV;
wire [7:0] port_out;


UART_TX tx( 
	  .i_Rst_L(i_Rst_L),
      .i_Clock(clk),
      .i_TX_DV(i_TX_DV),
	  .i_TX_Byte(i_TX_Byte),
	  .i_Clk_per_bit(i_Clk_per_bit),
	  .o_TX_Active_L(o_TX_Active),
	  .o_TX_Serial(o_TX_Serial),
	  .o_TX_Done(o_TX_Done)
   );
*/

   
   
UART_RX_PICO #(.ADDR(`RX_UART_ADD)) rx_mod(
	.rstn(i_Rst_L),
	.rx(o_TX_Serial),
	.clk(clk),
	.clk_per_bit(i_Clk_per_bit),
	.port_out(port_out),	
	.address(address),		
	.ren(ren),
	.int_rx(int_rx)
);


parameter tck = 62.5; // clock TinyFpga (1/16 MHz)
always #(tck/2) clk = ~clk;

initial begin
	$dumpfile("dump.vcd");
	$dumpvars(0,tx,rx_mod);
	
	clk = 0;
	i_Rst_L = 1;
	i_TX_DV = 0;
	i_TX_Byte = 8'haf;
	i_Clk_per_bit = N;
	address = `RX_UART_ADD;
	ren = 0;
		
	#tck i_Rst_L = 0;
	#tck i_Rst_L = 1;
	
	#(5*tck) i_TX_DV = 1;
	#(5*tck) i_TX_DV = 0;
	
	#(35000*tck) ren = 1;
	#tck ren = 0;
	
	#(1000*tck) i_TX_Byte = 8'h53;
	#(5*tck) i_TX_DV = 1;
	#(5*tck) i_TX_DV = 0;
	
	#(`END_SIM*tck) $finish;
end


endmodule 
