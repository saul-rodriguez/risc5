//gio_tb.v
`timescale 1ns/10ps

`include "gio.v"

`define WIDTH 8
`define ADDR  32'h01000000 //This parameter must be initialized during instantiation!
`define DATA  8'hab

module output_tb();

	reg [31:0] addr;
	reg [31:0] address;
	reg [`WIDTH-1:0] wdata;	
	reg wen;
	reg resetn; 
	wire [`WIDTH-1:0] odata; 


	outport #(.ADDR(`ADDR),.WIDTH(`WIDTH)) myport(	
		.addr(addr), 
		.wdata(wdata),	
		.wen(wen), 
		.resetn(resetn), 
		.odata(odata) 
	);

	initial begin		
		$dumpfile("dump.vcd");
		$dumpvars(0,myport);
		$monitor("%d\t%d\t%X\t%X",$time,wen,addr,odata);

		wen = 0;
		addr = `ADDR;
		resetn = 0;
		wdata = `DATA;
		
		#10 resetn = 1;
		#10 wen = 1;
		#10 wen = 0;
		addr = 0;
		wdata = `DATA + 1;
		addr = `ADDR + 1;
		#10 wen = 1;
		#50 $finish;

		 
		
	end
	
endmodule

