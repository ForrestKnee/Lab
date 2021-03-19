`timescale 1ns / 1ps

//Forrest Knee


module mux2_4b(
    input [3:0] in0,
    input [3:0] in1,
    input sel,
    output [3:0] out
    );
    
    assign out = sel ? in0 : in1;
    
endmodule
