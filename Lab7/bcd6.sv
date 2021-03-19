`timescale 1ns / 1ps


//Forrest Knee BCD 6-Bit Converter

module bcd6(

input [5:0] in,
output [3:0] tens,
output [3:0] ones
    );
wire [2:0] rc1;
wire [2:0] rc2;
wire [2:0] rc3;
wire [2:0] rc4;
wire [2:0] rc5;
wire [2:0] rc6;
wire [2:0] rc7;
    assign tens[3]=1'b0;
   
    add3 c1(
    .in({1'b0,in[5:3]}), .out({tens[2],rc1})
    );
    
    add3 c2(
    .in({rc1, in[2]}), .out({tens[1],rc2})
    );
    
    add3 c3(
    .in({rc2, in[1]}), .out({tens[0], ones[3:1]})
    );
       
    assign ones[0]=in[0];
    
endmodule
