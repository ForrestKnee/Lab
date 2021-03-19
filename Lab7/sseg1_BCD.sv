`timescale 1ns / 1ps



module sseg1_BCD(
    input [15:0] sw, //switches
    output [3:0] an, //7-seg digits
    output [6:0] seg, //7-seg segments
    output dp // decimal point
    );
    
    
    wire [3:0] thousands;
    wire [3:0] hundreds;
    wire [3:0] tens;
    wire [3:0] ones;
    
    bcd11 U1a(
    .in(sw[10:0]), .thousands(thousands), .hundreds(hundreds), .tens(tens), .ones(ones)
    );
    



    wire [3:0] muxout;
    
    mux2_4b mux2a(
    
    .in0(tens), .in1(ones), .sel(sw[15]), .out(muxout)
    );
    
    sseg_decoder decodea(
    .num(muxout), .sseg(seg)
    );
    
    assign an[1] = ~sw[15];
    assign an[0] = sw[15];
    assign an[3]=1;
    assign an[2]=1;
    assign dp=1;
    
endmodule
