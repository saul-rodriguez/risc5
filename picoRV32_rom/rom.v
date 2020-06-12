//rom.v
//`define FIRMWARE "/home/saul/projects/tinyfpga/gcc_tests/assembler_tut/L1_ejer6.hex4"
`define FIRMWARE "/home/saul/projects/tinyfpga/gcc_tests/assembler_porta/porta.hex4"

module rom256(input clk,
			input wen,
			input [7:0] addr,
			input [31:0] wdata,
			output reg [31:0] rdata);
			
  reg [31:0] mem [0:255];
  
 // initial mem[0] = 32'haabbccdd;
  
  initial begin
		$readmemh(`FIRMWARE, mem);
  end
  
  always @(posedge clk) begin
        if (wen) mem[addr] <= wdata;
        rdata <= mem[addr];
  end
endmodule
