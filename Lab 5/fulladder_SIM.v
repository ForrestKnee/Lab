`timescale 1ns / 1ps

//Forrest Knee


module fulladder_SIM();

    reg a1,b1,cin;
    wire c,s;

    fulladder fa1(
    
    .a1(a1), .b1(b1), .cin(cin), .c(c), .s(s));

    initial begin
    
    //case 1
   a1 = 0;
   b1 = 0;
   cin = 0;
   #10
   
     //case 2
   a1 = 0;
   b1 = 1;
   cin = 0;
   #10
   
     //case 3
   a1 = 1;
   b1 = 0;
   cin = 0;
   #10
   
     //case 4
   a1 = 1;
   b1 = 1;
   cin = 0;
   #10
   
     //case 5
   a1 = 0;
   b1 = 0;
   cin = 1;
   #10
   
     //case 6
   a1 = 0;
   b1 = 1;
   cin = 1;
   #10
   
     //case 7
   a1 = 1;
   b1 = 0;
   cin = 1;
   #10
   
     //case 8
   a1 = 1;
   b1 = 1;
   cin = 1;
   #10
  $finish;
  end

    
endmodule
