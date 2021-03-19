`timescale 1ns / 1ps

//Forrest Knee


module addersubtractor(
    input a1,b1,a2,b2,k,
    output s1,s2,c2);
    
    wire cb1, cb2, c1;
    
    assign cb1=(b1^k);
    assign cb2=(b2^k);
    
    fulladder fa1(
    .a1(a1), .b1(cb1), .cin(k), .c(c1), .s(s1));
    
    fulladder fa2(
    .a1(a2), .b1(cb2), .cin(k), .c(c2), .s(s2));
    

    
    
    
endmodule
