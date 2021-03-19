`timescale 1ns / 1ps



module sseg1(
    input [15:0] sw, //switches
    output [3:0] an, //7-seg digits
    output [6:0] seg, //7-seg segments
    output dp // decimal point
    );
    
    wire [3:0] muxout;
    
    mux2_4b mux2(
    
    .in0(sw[3:0]), .in1(sw[7:4]), .sel(sw[15]), .out(muxout)
    );
    
    sseg_decoder decode(
    .num(muxout), .sseg(seg)
    );
    
    assign an[1] = ~sw[15];
    assign an[0] = sw[15];
    assign an[3]=1;
    assign an[2]=1;
    assign dp=1;
    
endmodule
