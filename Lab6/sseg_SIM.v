`timescale 1ns / 1ps

module sseg_SIM();

reg [3:0] tnum;
wire [6:0] tsseg;

sseg_decoder s_g(
    
    .num(tnum), .sseg(tsseg));
   
  integer i; 
   
initial begin
    
    for(i=0; i<=8'hf; i=i+1) begin
    tnum = i;
    #10;
    end
    $finish;
    end
    

endmodule
