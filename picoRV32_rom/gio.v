//gio.v

`ifndef GIO_V
`define GIO_V

module outport(
	input [31:0] addr, 
	input [WIDTH-1:0] wdata,	
	input wen, 
	input resetn, 
	output reg [WIDTH-1:0] odata 
);
	parameter ADDR = 8'b0000_0000; //This parameter must be initialized during instantiation!
	parameter WIDTH = 8;		

    always @(*) begin
		if (resetn == 1'b0) begin
			odata = 0;
		end else if (wen && (addr == ADDR)) begin
			odata = wdata;
		end 
    end
endmodule


`endif
