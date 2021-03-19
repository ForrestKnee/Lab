`timescale 1ns / 1ps

//Forrest Knee Lab 6

module mux_SIM();

    reg [3:0] tin0;
    reg [3:0] tin1;
    reg [1:0] tsel;
    wire [3:0] tout;

    mux2_4b mux1(
    
    .in0(tin0), .in1(tin1), .sel(tsel), .out(tout));

    initial begin
    
    //Case 1
    
    tin0[0] = 0;
    tin0[1] = 0;
    tin0[2] = 0;
    tin0[3] = 0;
    tin1[0] = 1;
    tin1[1] = 0;
    tin1[2] = 0;
    tin1[3] = 0;
    tsel = 0;
    #10
    
    //Case 2
    
    tin0[0] = 0;
    tin0[1] = 1;
    tin0[2] = 0;
    tin0[3] = 0;
    tin1[0] = 1;
    tin1[1] = 1;
    tin1[2] = 0;
    tin1[3] = 0;
    tsel = 1;
    #10
    
    //Case 3
    
    tin0[0] = 0;
    tin0[1] = 0;
    tin0[2] = 1;
    tin0[3] = 0;
    tin1[0] = 1;
    tin1[1] = 0;
    tin1[2] = 1;
    tin1[3] = 0;
    tsel = 0;
    #10
    
    //Case 4
    
    tin0[0] = 0;
    tin0[1] = 1;
    tin0[2] = 1;
    tin0[3] = 0;
    tin1[0] = 1;
    tin1[1] = 1;
    tin1[2] = 1;
    tin1[3] = 0;
    tsel = 1;
    #10
    $finish;
    end
    
endmodule
