`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2019 12:03:54 AM
// Design Name: 
// Module Name: twoBitSub
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module fullSubtractor(a, b, bin, d, bout);

  input a, b, bin;
  output d, bout;
  wire a_not, xor1_not, d1, d2, d3;

  xor xor1(d1, a, b);
  xor xor2(d, d1, bin);
  
  not not1(a_not, a);
  not not2(xor1_not, d1);
  
  and and1(d2, a_not, b);
  and and2(d3, xor1_not, bin);
  or or1(bout, d2, d3);

endmodule

module twoBitSub(input a,input b,input c,input d,input bin, output d0,output d1, output bout);
wire b1;
  
  fullSubtractor sub1(a, b, bin, d0, b1);
  fullSubtractor sub2(c, d, b1, d1, bout);
  
endmodule
