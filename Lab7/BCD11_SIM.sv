`timescale 1ns / 1ps

//Forrest Knee BCD 11 bit Simulation


module BCD11_SIM();

reg[10:0] in;
wire [3:0] thousands;
wire [3:0] hundreds;
wire[3:0] tens;
wire[3:0] ones;
integer i;

bcd11 UUT(
.in(in), .thousands(thousands), .hundreds(hundreds), .tens(tens), .ones(ones)
);

initial begin

for (i=0; i<1111; i=i+1)
begin
in=i;
#10;
end

//case 12



$finish;
end


endmodule
