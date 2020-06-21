//vargen_tb.v

`timescale 1ns/10ps

`include "vargen.v"

module vargen_tb;

	reg clk;
	reg resetn;
	
	//reg        iomem_valid,
	//reg         iomem_ready,
	//output [ 3:0] iomem_wstrb,
	//output [31:0] iomem_addr,
	//output [31:0] iomem_wdata,
	//input  [31:0] iomem_rdata,
	
	reg  irq_5;
	reg  irq_6;
	reg  irq_7;

	//reg [7:0] porta,
	//wire [7:0] portb,
	
	wire [7:0] porta_out;
	
	reg [7:0] portb_in;
	
	vargen myrisc(
			.clk(clk),
			.resetn(resetn),
			.irq_5(irq_5),
			.irq_6(irq_6),
			.irq_7(irq_7),
			.porta_out(porta_out),
			.portb_in(portb_in)
	);
	
/*	initial begin
		$monitor("%d\t%H\t%h\n",$time,myrisk,leds);
	end  
*/
	integer idx;
	
	initial begin
		
		$dumpfile("dump.vcd");
		$dumpvars(0,myrisc);
		
		for(idx = 0; idx < 32; idx = idx + 1) begin
			$dumpvars(0,myrisc.cpu.cpuregs.regs[idx]);
		end

		clk = 0;
		irq_5 = 0;
		irq_6 = 0;
		irq_7 = 0;
		resetn = 0;
		portb_in = 8'haf;
		#15 resetn = 1;
		
		#500 irq_5 = 1;
		#40 irq_5 = 0;
		#10000 irq_6 = 1;
		#40 irq_6 = 0;
		#10000 irq_7 = 1;
		#40 irq_7 = 0;
		#10000 $finish;
	end

	
	
	

	always begin
		#10 clk = ~clk;
	end

endmodule
