// look in pins.pcf for all the pin names on the TinyFPGA BX board
`include "logistart.v"
`include "rom.v"

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
	input PIN_17,
	input PIN_18,
	input PIN_19,
	input PIN_20,    
	input CLK,
    output USBPU  // USB pull-up resistor
);
    // drive USB pull-up resistor to '0' to disable USB
	assign USBPU = 0;
	
	wire [7:0] switches;
	assign switches = {PIN_8,PIN_7,PIN_6,PIN_5,PIN_4,PIN_3,PIN_2,PIN_1};
	
	wire [7:0] leds;
	assign {PIN_16,PIN_15,PIN_14,PIN_13,PIN_12,PIN_11,PIN_10,PIN_9} = leds;
	
	wire [3:0] pushbuttons;
	assign pushbuttons = {PIN_17,PIN_18,PIN_19,PIN_20};
	
	//logistart logi1(.switches(switches),	
	//			    .leds(leds));    
	
	wire wen;
	wire clk;
	wire [7:0] addr;
	wire [31:0] rdata;
	wire [31:0] wdata;
		
	assign wen = 0; //Only used as ROM 
	assign clk = CLK;
	assign wdata = 32'h0000_0000;
	
	rom256 mymem(.clk(clk),
			   .wen(wen),
			   .addr(addr),
			   .wdata(wdata),
			   .rdata(rdata));
	
	reg [7:0] leds_reg;

	always @(*) begin
		case(pushbuttons)
			4'b0001: leds_reg = rdata[7:0]; 
			4'b0010: leds_reg = rdata[15:8];
			4'b0100: leds_reg = rdata[23:16];
			4'b1000: leds_reg = rdata[31:24];
			default: leds_reg = 32'h0000_0000;
		endcase
	end

	assign addr = switches;	
	assign leds = leds_reg;				    
    
endmodule
