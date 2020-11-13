
`include "vargen.v"

module top (
	input PIN_1, 
	input PIN_2,
	input PIN_3,
	input PIN_4,
	input PIN_5,
	output PIN_6,
	output PIN_7,
	output PIN_8,
	output PIN_9,
	output PIN_10,
	output PIN_11,
	output PIN_12,
	output PIN_13,
	output PIN_14,
	output PIN_15,
	output PIN_16,	
	input PIN_17,
	input PIN_18,
	input PIN_19,
	input PIN_20,  
	input PIN_21,
	output PIN_22,  
	//output PIN_23,
	input CLK,
    output USBPU  // USB pull-up resistor
);
    // drive USB pull-up resistor to '0' to disable USB
	assign USBPU = 0;
	
	//PORTB
	wire [7:0] switches;
	//assign switches = {PIN_8,PIN_7,PIN_6,PIN_5,PIN_4,PIN_3,PIN_2,PIN_1};
	assign switches = {{(4){1'b0}},PIN_4,PIN_3,PIN_2,PIN_1};
	
	//PORTA
	wire [7:0] leds;
	assign leds = {PIN_16,PIN_15,PIN_14,PIN_13,PIN_12,PIN_11,PIN_10,PIN_9};
	
	//IRQs
	wire [3:0] pushbuttons;
	assign pushbuttons = {PIN_17,PIN_18,PIN_19,PIN_20};
	
	//UART
	wire rx_uart;
	assign rx_uart = PIN_21;
	
	wire tx_uart;
	assign tx_uart = PIN_22;
	
	//SPI
	wire spi_clk;
	wire spi_mosi;
	wire spi_miso;
	wire spi_cs;
	
	assign spi_miso = PIN_5;
	assign spi_clk = PIN_6;
	assign spi_mosi = PIN_7;
	assign spi_cs = PIN_8;
	
	//resetn		
	reg resetn_meta;
	reg resetn;
	
	always @(posedge CLK) begin
		resetn_meta <= ~pushbuttons[0];
		resetn <= resetn_meta;
	end
	
	//risc5 vargen
	vargen myrisc(
			.clk(CLK),
			.resetn(resetn),
			.irq_5(pushbuttons[1]),
			.irq_6(pushbuttons[2]),
			.irq_7(pushbuttons[3]),
			.porta_out(leds),
			.portb_in(switches),
			.rx_uart(rx_uart),
			.tx_uart(tx_uart)
	);
		
    
endmodule
