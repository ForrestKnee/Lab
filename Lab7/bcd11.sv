`timescale 1ns / 1ps

//Forrest Knee BCD 11-Bit


module bcd11(
    input [10:0] in,
    output [3:0] thousands,
    output [3:0] hundreds,
    output [3:0] tens,
    output [3:0] ones
    );
  
wire [2:0] rc1;
wire [2:0] rc2;
wire [2:0] rc3;
wire [2:0] rc4;
wire [2:0] rc5;
wire [2:0] rc6;
wire [2:0] rc7;
wire [2:0] rc8;
wire [2:0] rc9;
wire [3:0] rc10;
wire [3:0] rc12;
wire [3:0] rc13;
wire [3:0] rc14;
wire [2:0] rc15;
wire [3:0] rc16;

assign thousands[3:2]=0;
assign ones[0]=in[0];
//                    THE RC's ARE WHAT GOES IN TO THE C's

add3 c1(
.in({1'b0, in[10:8]}), .out({rc9[2], rc2})
);
add3 c2(
.in({rc2, in[7]}), .out({rc9[1], rc3})
);
add3 c3(
.in({rc3, in[6]}), .out({rc9[0], rc4})
);
add3  c4(
.in({rc4, in[5]}), .out({rc10[0],rc5})
);
add3 c5(
.in({rc5, in[4]}), .out({rc12[0], rc6})
);
add3 c6(
.in({rc6, in[3]}), .out({rc13[0], rc7})
);
add3 c7(
.in({rc7, in[2]}), .out({rc14[0], rc8})
);
add3 c8(
.in({rc8, in[1]}), .out({tens[0], ones[3:1]})
);
add3 c9(
.in({1'b0, rc9}), .out({rc15[2], rc10[3:1]})
);
add3 c10(
.in(rc10), .out({rc15[1], rc12[3:1]})
);
add3 c12( //I accidentally skipped c11 in my 11-Bit BCD Circuit Diagram so I skipped it here
.in(rc12), .out({rc15[0], rc13[3:1]})
);
add3 c13(
.in(rc13), .out({rc16[0], rc14[3:1]})
);
add3 c14(
.in(rc14), .out({hundreds[0], tens[3:1]})
);
add3 c15(
.in({1'b0, rc15}), .out({thousands[1], rc16[3:1]})
);
add3 c16(
.in(rc16), .out({thousands[0], hundreds[3:1]})
);

  
    
endmodule
