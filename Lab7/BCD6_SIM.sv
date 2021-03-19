`timescale 1ns / 1ps

//Forrest Knee BCD 6-Bit Simulation
module BCD6_SIM();

reg [5:0] in;
wire [3:0] tens;
wire [3:0] ones;
integer i;
bcd6 UUT(
    .in(in), .tens(tens), .ones(ones)
    );
    
initial begin
    
    
    for (i=0; i<22; i=i+1)
    begin
    
    in=i;
    #10;
    end
    
    //case 23
    in=47;
    #10;
    
    //case 24
    in=63;
    #10;
    
$finish;
end

endmodule
