///////////////////////////////////////////////////////////////////////////////
// Description:       Simple test bench for SPI Master module
///////////////////////////////////////////////////////////////////////////////
`timescale 1ns/1ps

`include "SPI_Master.v"

`define CLK_FREQ 16000000
`define SPI_FREQ 1600000
`define SPI_MASTER 32'hcaca_bebe

module SPI_Master_Pico_TB ();
  
  //parameter SPI_MODE = 0; // CPOL = 0, CPHA = 0
    
  parameter CLKS_PER_HALF_BIT = (`CLK_FREQ/`SPI_FREQ)/2;
  parameter CLK_PERIOD = 62.5;  // Period Clock TinyFpga 1/16 MHz

  logic rstn = 1'b0;
  logic clk = 1'b0;
  logic [11:0] Clks_per_half_bit = CLKS_PER_HALF_BIT;
  logic [31:0] addr = 0;
  logic wstrobe = 0;
  logic [7:0] wdata = 0; //data to be transmited	
  logic mem_valid = 0;
  logic mem_ready;
  logic spi_master_ready; //Aknowledge that address has been read
  logic spi_master_tx_int_flag;	
  logic [7:0] rx_data;
  logic SPI_Clk;
  //logic SPI_MISO;
  logic SPI_MOSI;

  assign mem_ready = spi_master_ready; 
  
  SPI_Master_Pico #(.ADDR(`SPI_MASTER)) spi(
  	.rstn(rstn),
  	.clk(clk),
  	.Clks_per_half_bit(Clks_per_half_bit),
  	.addr(addr),
  	.wen(wstrobe),
  	.wdata(wdata), //data to be transmited	
  	.mem_valid(mem_valid),
  	.mem_ready(mem_ready),
  	.spi_master_ready(spi_master_ready), //Aknowledge that address has been read
  	.spi_master_tx_int_flag(spi_master_tx_int_flag),	
  	.rx_data(rx_data),	
  	.SPI_Clk(SPI_Clk),
  	.SPI_MISO(SPI_MOSI),
  	.SPI_MOSI(SPI_MOSI) //Back to back test
  );
  
  // Clock Generator:
  always #(CLK_PERIOD) clk = ~clk;

  // Sends a single byte from master.
  task SendSingleByte(input [7:0] data);
    @(posedge clk);
     wdata <= data;
   	 addr <= `SPI_MASTER;
   	 mem_valid <= 1;
   	 wstrobe <= 1;
    
    @(posedge clk);
     wdata <= 0;
     addr <= 0;
     mem_valid <= 0;
     wstrobe <= 1'b0;
    @(posedge spi_master_tx_int_flag);
     //repeat(100) @(posedge clk);
  endtask // SendSingleByte

  
  initial
    begin
      // Required for EDA Playground
      $dumpfile("dump.vcd"); 
      $dumpvars;
      
      repeat(10) @(posedge clk);
      rstn = 1'b0;
      repeat(10) @(posedge clk);
      rstn = 1'b1;
      repeat(10) @(posedge clk);
      
      // Test single byte
      SendSingleByte(8'hC1);
      $display("Sent out 0xC1, Received 0x%X", rx_data); 
      
      // Test double byte
      SendSingleByte(8'hBE);
      $display("Sent out 0xBE, Received 0x%X", rx_data); 
      SendSingleByte(8'hEF);
      $display("Sent out 0xEF, Received 0x%X", rx_data); 
      repeat(100) @(posedge clk);
      $finish();      
    end // initial begin

endmodule // SPI_Slave
