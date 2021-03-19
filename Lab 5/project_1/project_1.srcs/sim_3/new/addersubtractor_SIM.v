`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//Forrest Knee


module addersubtractor_SIM();

    reg a1,b1,a2,b2,sin;
    wire s1,s2,c;

    addersubtractor(
    .a1(a1), .b1(b1), .a2(a2), .b2(b2), .sin(sin), .s1(s1), .s2(s2), .c(c));
    
    initial begin
    
    // Case 1
    a1= 0;
    b1= 1;
    a2= 0;
    b2= 0;
    sin= 0;
    
    // Case 2
    a1= 0;
    b1= 0;
    a2= 0;
    b2= 1;
    sin= 0;
    
    // Case 3
    a1= 0;
    b1= 1;
    a2= 0;
    b2= 1;
    sin= 0;
    
    // Case 4
    a1= 1;
    b1= 1;
    a2= 0;
    b2= 0;
    sin= 0;
    
    // Case 5
    a1= 0;
    b1= 1;
    a2= 1;
    b2= 0;
    sin= 0;
    
    // Case 6
    a1= 0;
    b1= 0;
    a2= 1;
    b2= 0;
    sin= 0;
    
    // Case 7
    a1= 0;
    b1= 1;
    a2= 0;
    b2= 0;
    sin= 1;
    
    // Case 8
    a1= 0;
    b1= 0;
    a2= 0;
    b2= 1;
    sin= 1;
    
    // Case 9
    a1= 0;
    b1= 1;
    a2= 0;
    b2= 1;
    sin= 1;
    
    // Case 10
    a1= 1;
    b1= 1;
    a2= 0;
    b2= 0;
    sin= 1;
    
    // Case 11
    a1= 0;
    b1= 1;
    a2= 1;
    b2= 0;
    sin= 1;
    
    // Case 12
    a1= 0;
    b1= 0;
    a2= 1;
    b2= 0;
    sin= 1;
    
$finish;
end
    


endmodule
