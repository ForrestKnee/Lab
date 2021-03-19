`timescale 1ns / 1ps

// Forrest Knee Mux4


module mux4(
    input [15:0] in,
    input [1:0] sel,
    output reg [3:0] out
    );
    
    wire [3:0] in0;
    wire [3:0] in1;
    wire [3:0] in2;
    wire [3:0] in3;
   
    
    assign in0 = in[3:0];
    assign in1 = in[7:4];
    assign in2 = in[11:8];
    assign in3 = in[15:12];
    
    always @*
    begin
    
    case (sel) 
    2'b00 : out = in0;
    2'b01 : out = in1;
    2'b10 : out = in2;
    2'b11 : out = in3;
    endcase
    end
    
    
endmodule
