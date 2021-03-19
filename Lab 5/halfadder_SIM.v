`timescale 1ns / 1ps

//Forrest Knee


module halfadder_SIM();

    reg a1,b1;
    wire carry1,sum1;
    
    halfadder ha1(
    
    .a(a1), .b(b1), .c(carry1), .s(sum1));
    
    initial begin
    
    //case 1
    
    a1=0; b1=0;
    #10;
    
    //case 2
    
    a1=0; b1=1;
    #10
    
    //case 3
    
    a1=1; b1=0;
    #10
    
    //case 4
    
    a1=1; b1=1;
    #10
    
    $finish;
    end

    
endmodule
