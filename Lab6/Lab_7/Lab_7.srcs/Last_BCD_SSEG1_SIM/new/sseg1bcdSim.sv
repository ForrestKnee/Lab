`timescale 1ns / 1ps

// Forrest Knee sseg1_BCD Test

module sseg1bcdSim();

    reg [15:0] sw;
    wire [3:0] an;
    wire [6:0] seg;
    wire dp;
  
    sseg1_BCD name1(
    .sw(sw), .an(an), .seg(seg), .dp(dp));
    
    initial begin
    
    sw= 16'h0;
    // case 1
    
     sw[10:0] = 11'h1;
     sw[15]= 1'b0;
     #10
     sw[15] = 1'b1;
     #10
    
    // case 2
    
     sw[10:0] = 11'h1;
     sw[15]= 1'b0;
     #10
     sw[15] = 1'b1;
     #10
     
     
     // case 3
    
     sw[10:0] = 11'h1;
     sw[15]= 1'b0;
     #10
     sw[15] = 1'b1;
     #10
     
     // case 4
    
     sw[10:0] = 11'h1;
     sw[15]= 1'b0;
     #10
     sw[15] = 1'b1;
     #10
    $finish;
    end
    
    
endmodule

