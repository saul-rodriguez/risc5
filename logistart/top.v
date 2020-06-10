// look in pins.pcf for all the pin names on the TinyFPGA BX board
`include "logistart.v"

module top (
	input PIN_1,
	input PIN_2,
	input PIN_3,
	input PIN_4,
	input PIN_5,
	input PIN_6,
	input PIN_7,
	input PIN_8,
	output PIN_9,
	output PIN_10,
	output PIN_11,
	output PIN_12,
	output PIN_13,
	output PIN_14,
	output PIN_15,
	output PIN_16,	    
    output USBPU  // USB pull-up resistor
);
    // drive USB pull-up resistor to '0' to disable USB
	assign USBPU = 0;
	
	wire [7:0] switches;
	assign switches = {PIN_8,PIN_7,PIN_6,PIN_5,PIN_4,PIN_3,PIN_2,PIN_1};
	
	wire [7:0] leds;
	assign leds = {PIN_16,PIN_15,PIN_14,PIN_13,PIN_12,PIN_11,PIN_10,PIN_9};
	
	
	logistart logi1(.switches(switches),	
				    .leds(leds));    
    
endmodule
