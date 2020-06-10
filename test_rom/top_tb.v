//top_tb.v

`timescale 1ns/10ps

`include "top.v"

module top_tb;

/*
reg PIN_1; 
reg PIN_2;
reg PIN_3;
reg PIN_4;
reg PIN_5;
reg PIN_6;
reg PIN_7;
reg PIN_8;

wire PIN_9,
wire PIN_10,
wire PIN_11,
wire PIN_12,
wire PIN_13,
wire PIN_14,
	output PIN_15,
	output PIN_16,	
	input PIN_17,
	input PIN_18,
	input PIN_19,
	input PIN_20,    
	*/
reg [7:0] switches;
wire [7:0] leds;
reg [3:0] pushbuttons;

reg CLK;
wire USBPU;  // USB pull-up resistor

top mytop(.PIN_1(switches[0]),
		  .PIN_2(switches[1]),
		  .PIN_3(switches[2]),
		  .PIN_4(switches[3]),
		  .PIN_5(switches[4]),
		  .PIN_6(switches[5]),
		  .PIN_7(switches[6]),
		  .PIN_8(switches[7]),
		  .PIN_9(leds[0]),
		  .PIN_10(leds[1]),
		  .PIN_11(leds[2]),
		  .PIN_12(leds[3]),
		  .PIN_13(leds[4]),
		  .PIN_14(leds[5]),
		  .PIN_15(leds[6]),
		  .PIN_16(leds[7]),
		  .PIN_17(pushbuttons[0]),
		  .PIN_18(pushbuttons[1]),
		  .PIN_19(pushbuttons[2]),
		  .PIN_20(pushbuttons[3]),
		  .CLK(CLK),
		  .USBPU(USBPU));
		
initial begin
		$monitor("%d\t%H\t%h\n",$time,pushbuttons,leds);
end  

initial begin

	
	$dumpfile("dump.vcd");
	$dumpvars(0,mytop);
	CLK = 0;
	switches = 8'h00;
	pushbuttons = 4'b0000;
	
	
	#20 pushbuttons = 4'b0001; 
	#20 pushbuttons = 4'b0010;
	#20 pushbuttons = 4'b0100;
	#20 pushbuttons = 4'b1000;	
	#20 pushbuttons = 4'b0000;	
		switches = 8'h01;
	#20 pushbuttons = 4'b0001;
	#20 pushbuttons = 4'b0010;
	#20 pushbuttons = 4'b0100;
	#20 pushbuttons = 4'b1000;	
	#20 pushbuttons = 4'b0000;	
		
	
	#1000 $finish;
end

always begin
	#5 CLK = ~CLK;
end

endmodule
