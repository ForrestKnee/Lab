`timescale 1ns / 1ps

//Forrest Knee lab 6

module sseg1_SIM();

    reg [15:0] sw;
    wire [3:0] an;
    wire [6:0] seg;
    wire [1:0] dp;
    
    sseg1 name1(
    .sw(sw), .an(an), .seg(seg), .dp(dp));
    
    initial begin
    
    sw= 16'h0000;
    sw[14:8]= 0;
    // case 1
    
     sw[7:0] = 8'hA;
     sw[15]= 1'b0;
     #10
     sw[15] = 1'b1;
     #10
    
    // case 2
    
     sw[7:0] = 8'hB;
     sw[15]= 1'b0;
     #10
     sw[15] = 1'b1;
     #10
     
     
     // case 3
    
     sw[7:0] = 8'hC;
     sw[15]= 1'b0;
     #10
     sw[15] = 1'b1;
     #10
     
     // case 4
    
     sw[7:0] = 8'hD;
     sw[15]= 1'b0;
     #10
     sw[15] = 1'b1;
     #10
    $finish;
    end
    
    
endmodule
