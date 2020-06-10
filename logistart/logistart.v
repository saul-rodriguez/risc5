//Tinyfpga BX - LogicShield

module logistart(
input [7:0] switches,
output [7:0] leds
);

assign leds = switches;

endmodule

