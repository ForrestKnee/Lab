`timescale 1ns / 1ps

// Forrest Knee


module fulladder(

    input a1,b1,cin,
    output s,c
    );
    
    wire s1,c1,c2;
    
    halfadder ha1(
    .a(a1), .b(b1), .c(c1), .s(s1));
    
    halfadder ha2(
    .a(cin), .b(s1), .c(c2), .s(s));
    
    assign c=(c1 | c2);
    
endmodule
