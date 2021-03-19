`timescale 1ns / 1ps

// Forrest Knee sseg4

module sseg4(
input [15:0] data,
input hex_dec,
input sign,
input [1:0] digit_sel,
output [6:0] seg,
output dp,
output [3:0] an
    );
    
    wire [15:0] bc11OUT;
    wire [15:0] mux2_1OUT;
    wire [3:0] mux4_1OUT;
    wire [6:0] sseg_decoder_1OUT;
    wire [2:0] an_decoder_1OUT;
    wire an_decoder3NOT;
    wire and1;
    
    bcd11 bcd11_1(
    .in(data[10:0]), .out(bcd11OUT)
    );
    
    mux2 #(.N(16)) mux2_1(
    .in0(bcd11OUT), .in1(data), .sel(hex_dec), .out(mux2_1OUT)
    );
    
    mux4 mux4_1(
    .in(mux2_1OUT), .sel(digit_sel), .out(mux4_1OUT)
    );
    
    sseg_decoder sseg_decoder1(
    .num(mux4_1OUT), .sseg(sseg_decoder_1OUT)
    );
    
    an_decoder an_decoder1(
    .in(digit_sel), .out(an_decoder_1OUT)
    );
    
    //assign an_decoder3NOT = !an_decoder_1OUT[3];
    
    //assign and1 = (sign & an_decoder3NOT);
    
    mux2 #(.N(7)) mux2_2(
    .in0(sseg_decoder_1OUT), .in1(7'b0111111), .sel((sign & !an_decoder_1OUT[3])), .out(seg)
    );
    
    assign dp = 1'b1;
    assign an = an_decoder_1OUT;
endmodule
