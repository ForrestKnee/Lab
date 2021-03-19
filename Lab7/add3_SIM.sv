`timescale 1ns / 1ps

//Forrest Knee Add3 Simulation

module add3_SIM();

reg [3:0] in;
wire [3:0] out;
integer i;

add3 UUT(
    .in(in), .out(out)
    );

initial begin
    
    for(i=0; i<16; i=i+1)
    begin
    
        in=i;
        #10;
    end
    $finish;
    end



endmodule
