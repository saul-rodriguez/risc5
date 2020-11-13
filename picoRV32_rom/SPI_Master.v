`ifndef SPI_MASTER_V
`define SPI_MASTER_V
	
module SPI_master_pico(
		input clk,
		input [31:0] addr, 
		input [WIDTH-1:0] wdata,	
		input wen, 
		input resetn, 	
		input mem_valid,
		input mem_ready,
		output reg mem_port_ready,
		output reg [WIDTH-1:0] rx_data,
		output reg tx_ready //High when idle, Low when busy
);

 	parameter ADDR = 32'h0000_0000; //This parameter must be initialized during instantiation!
 	parameter WIDTH = 8;

 	reg [7:0] tx_byte; // New byte to tx
 	 
 	 
 	wire tx_start; 	
 	assign tx_start = ((addr == ADDR) && mem_valid && wen)? 1'b1 : 1'b0;
 	
 	//bus interface
 	always @(posedge clk) begin
 		if (resetn == 1'b0) begin
 			rx_data <= 0;
 			mem_port_ready <= 0; 			
 			tx_byte <= 0;
 		end else if (mem_valid && (addr == ADDR)) begin
 			mem_port_ready <= (!mem_ready)? 1'b1 : 1'b0; //activates only 1 cycle and only if another device has not already activated mem_ready!
 			
 			if (wen) begin //Copy the data and start the tx 
 				tx_byte <= wdata;
 			end
 		end else begin
 			mem_port_ready <= 1'b0; 
 		end				
 	end    
 	
 	//Transmitter 
 	localparam IDLE 	= 2'b00;
 	localparam TX 		= 2'b01;
 	localparam CLEAN_UP	= 2'b11;
 	
 	reg [1:0] SPI_state;
 	
 	always @(posedge clk) begin
 		if (resetn == 1'b0) begin
 			SPI_state = IDLE;
 			tx_ready <= 1;
 		end else begin
 			
 			case (SPI_state)
 				IDLE:
 					begin
 						if (tx_start == 1'b1) begin
 							SPI_state <= TX;
 							tx_ready <= 1'b0;
 						end else begin
 							SPI_state <= IDLE;
 							tx_ready <= 1'b1;
 						end
 					end
 				TX:
 					begin
 						rx_data <= tx_byte;
 						SPI_state <= CLEAN_UP;
 					end
 				CLEAN_UP:
 					begin
 						tx_ready <= 1;
 						SPI_state <= IDLE;
 					end
 				default:
 					SPI_state <= IDLE;
 			endcase 			
 		end
 	end
 	
endmodule
	
	
`endif