`ifndef VARGEN_V
`define VARGEN_V

`ifdef PICORV32_V
`error "vargen.v must be read before picorv32.v!"
`endif

`define PICORV32_REGS picosoc_regs

`include "rom.v"
`include "picorv32.v"
`include "gio.v"


/*					Memory MAP
 *      START            END          BLOCK		NOTES
 *	------------------------------------------------------------------------------
 *   32'h0000_0000 ... 32'h0000_03FF  DATA		0 to 256x4=1024 bytes (1 kbyte)
 *	 32'h0001_0000 ... 32'h000F_FFFF  PROGRAM	64436 (64kbytes) to 1048575 (1 Mbyte)  
 *	 32'h0010_0000 ... 32'hFFFF_FFFF  MMUP		1048576 to ...
 *
 *   Mermory Mapped User Peripherals (MMUP)
 *	 Name:		Address:		Description:
 *  -------------------------------------------------
 *	 PORTA		32'h0010_0000	8-bit Digital output		
 * 		
 */
 
 `define PORTA	32'h0010_0000
 `define PORTA_WIDTH 8
 
 
module vargen (
	input clk,
	input resetn,
	
	//output        iomem_valid,
	//input         iomem_ready,
	//output [ 3:0] iomem_wstrb,
	//output [31:0] iomem_addr,
	//output [31:0] iomem_wdata,
	//input  [31:0] iomem_rdata,
	
	input  irq_5,
	input  irq_6,
	input  irq_7,

	output [`PORTA_WIDTH-1:0] porta_out
	//output [7:0] portb,
);


parameter integer MEM_WORDS = 256;
parameter [31:0] STACKADDR = (4*MEM_WORDS);       // end of memory at 1kbyte
//parameter [31:0] PROGADDR_RESET = 32'h 0005_0000; // 1 MB into flash
//parameter [31:0] PROGADDR_IRQ = 32'h 0005_0010; // 1 MB into flash
parameter [31:0] PROGADDR_RESET = 32'h 0001_0000; // Starts at 64k from initialized blockRAM
parameter [31:0] PROGADDR_IRQ = 32'h 0001_0010; // 

//Interrupts
reg [31:0] irq;
wire irq_stall = 0;
wire irq_uart = 0;

always @* begin
		irq = 0;
		irq[3] = irq_stall;
		irq[4] = irq_uart;
		irq[5] = irq_5;
		irq[6] = irq_6;
		irq[7] = irq_7;
end

wire mem_valid;
wire mem_instr;
wire mem_ready;
wire [31:0] mem_addr;
wire [31:0] mem_wdata;
wire [3:0] mem_wstrb;
wire [31:0] mem_rdata;


wire [31:0] ram_rdata;
reg ram_ready;

wire [31:0] rom_rdata;
reg rom_ready; 

//mem_ready is asserted when a peer has completed to place data on the mem_rdata bus. 
assign mem_ready = ram_ready || rom_ready;

//mem_rdata is implemented as a mux
assign mem_rdata = ram_ready ? ram_rdata : rom_ready ? rom_rdata : 32'h0000_0000;

//Only one NAME_ready signal can be asserted at a time!   
always @(posedge clk) begin	
	ram_ready <= mem_valid && !mem_ready && mem_addr < 4*MEM_WORDS; //Only asserted if address is below 4*MEMWORDS = 1kbyte	
	rom_ready <= mem_valid && !mem_ready && mem_addr >= 4*MEM_WORDS && mem_addr < 32'h0010_0000; //Only asserted if memory is above RAM and under 1M
end

//RISC V 
picorv32 #(
		.STACKADDR(STACKADDR),
		.PROGADDR_RESET(PROGADDR_RESET),
		.PROGADDR_IRQ(PROGADDR_IRQ),
		.BARREL_SHIFTER(1),
		.COMPRESSED_ISA(1),
		.ENABLE_MUL(1),
		.ENABLE_DIV(1),
		.ENABLE_IRQ(1),
		.ENABLE_IRQ_QREGS(1)
	) cpu (
		.clk         (clk        ),
		.resetn      (resetn     ),
		.mem_valid   (mem_valid  ),
		.mem_instr   (mem_instr  ),
		.mem_ready   (mem_ready  ),
		.mem_addr    (mem_addr   ),
		.mem_wdata   (mem_wdata  ),
		.mem_wstrb   (mem_wstrb  ),
		.mem_rdata   (mem_rdata  ),
		.irq         (irq        )
	);

// DATA MEMORY
picosoc_mem #(.WORDS(MEM_WORDS)) memory (
		.clk(clk),
		.wen((mem_valid && !mem_ready && mem_addr < 4*MEM_WORDS) ? mem_wstrb : 4'b0),
		.addr(mem_addr[23:2]),
		.wdata(mem_wdata),
		.rdata(ram_rdata)
	);
	
// PROGRAM MEMORY
rom256 pico_rom(
			   .clk(clk),
			   .wen(1'b0),
			   .addr(mem_addr[9:2]),
			   .wdata(32'h0000_0000),
			   .rdata(rom_rdata)
	);
	
outport #(.ADDR(`PORTA),
		  .WIDTH(`PORTA_WIDTH)
		  ) porta(
			.addr(mem_addr), 
			.wdata(mem_wdata[`PORTA_WIDTH-1:0]),	
			.wen(mem_wstrb[0]), 
			.resetn(resetn), 
			.odata(porta_out)
		  );
		  
	
	


endmodule

module picosoc_regs (
	input clk, wen,
	input [5:0] waddr,
	input [5:0] raddr1,
	input [5:0] raddr2,
	input [31:0] wdata,
	output [31:0] rdata1,
	output [31:0] rdata2
);
	reg [31:0] regs [0:31];

	always @(posedge clk)
		if (wen) regs[waddr[4:0]] <= wdata;

	assign rdata1 = regs[raddr1[4:0]];
	assign rdata2 = regs[raddr2[4:0]];
endmodule

module picosoc_mem #(
	parameter integer WORDS = 256
) (
	input clk,
	input [3:0] wen,
	input [21:0] addr,
	input [31:0] wdata,
	output reg [31:0] rdata
);
	reg [31:0] mem [0:WORDS-1];

	always @(posedge clk) begin
		rdata <= mem[addr];
		if (wen[0]) mem[addr][ 7: 0] <= wdata[ 7: 0];
		if (wen[1]) mem[addr][15: 8] <= wdata[15: 8];
		if (wen[2]) mem[addr][23:16] <= wdata[23:16];
		if (wen[3]) mem[addr][31:24] <= wdata[31:24];
	end
endmodule

`endif

