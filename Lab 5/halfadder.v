`timescale 1ns / 1ps
//Forrest Knee


module halfadder(
    input a,b,
    output c,s);
    
    assign c=(a&b);
    assign s=(a^b);
    
endmodule
