`timescale 1ns / 1ps

//Forrest Knee Lab 7 Add3


module add3(
    input [3:0] in,
    output reg [3:0] out
    );
    
    always @*
        begin
            if (in > 4) 
                out = in + 3;
            else
                out = in;
   end
    
endmodule
