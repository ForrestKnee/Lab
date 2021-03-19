`timescale 1ns / 1ps

//Forrest Knee Lab 6

module mux_SIM();

    reg [15:0] tin0;
    reg [15:0] tin1;
    reg [1:0] tsel;
    wire [15:0] tout;
    integer i;
    mux2 #(.N(16))  UUT(
    
    .in0(tin0), .in1(tin1), .sel(tsel), .out(tout));

    initial begin
    
    //Case 1
    
    for(i=0; i<20; i=i+1)
    begin
    tin0=i;
    tin1=i+2;
    tsel=1'b0;
    #10;
    tsel=1'b1;
    #10;
    end
    
    $finish;
    end
    
endmodule
