`timescale 1ns / 1ps
// Forrest Knee Lab 8 Mux 2

module mux2
#(parameter N=1)
(
input [N-1:0] in0,
input [N-1:0] in1,
input sel,
output [N-1:0] out
    );
    
    assign out = sel? in0 : in1;
    
    
    
    
    
endmodule
