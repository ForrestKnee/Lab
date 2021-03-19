`timescale 1ns / 1ps
// Forrest Knee Mux 4 Simulation Test Bench

module Mux4_SIM();

reg [15:0] in;
reg [1:0] sel;
wire [3:0] out;
integer i;

mux4 UUT(
.in(in), .sel(sel), .out(out)
);

initial begin

for(i=0; i<12; i=i+1);
begin

in[3:0] = i;
in[7:4] = i+1;
in[11:8] = i+2;
in[15:12] = i+3;
sel = 2'b00;
#10;
sel= 2'b01;
#10;
sel= 2'b10;
#10;
sel = 2'b11;
#10;
end

in[3:0] = 12;
in[7:4] = 13;
in[11:8] = 14;
sel = 2'b00;
#10;
sel = 2'b01;
#10;
sel = 2'b10;
#10;
sel = 2'b11;
#10;

$finish;
end

endmodule
