`define ADDRESS_SIZE 8
`define REG_SIZE	32

module test(input clk,
			input wen,
			input [7:0] addr,
			input [31:0] wdata,
			output reg [31:0] rdata);
			
  reg [31:0] mem [0:255];
  
 // initial mem[0] = 32'haabbccdd;
  
  initial begin
		$readmemh("test.hex4", mem);
  end
  
  always @(posedge clk) begin
        if (wen) mem[addr] <= wdata;
        rdata <= mem[addr];
  end
endmodule
