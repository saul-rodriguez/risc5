# synthesize
yosys -p 'synth_ice40 -top top -blif top.blif' top.v

#Place and route
arachne-pnr -d 8k -P cm81 -o top.asc -p pins.pcf top.blif

#Timing report
icetime -d lp8k -mtr top.rpt top.asc

#Generate binary
icepack top.asc top.bin

