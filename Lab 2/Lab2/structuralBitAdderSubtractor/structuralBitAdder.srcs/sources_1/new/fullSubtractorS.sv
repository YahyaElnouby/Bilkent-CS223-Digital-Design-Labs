`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2019 10:23:56 PM
// Design Name: 
// Module Name: fullSubtractorS
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


module fullSubtractorS(
    input a,
    input b,
    input bin,
    output d,
    output bout
    );
    
     wire a_not, xor1_not, d1, d2, d3;

  xor xor1(d1, a, b);
  xor xor2(d, d1, bin);
  
  not not1(a_not, a);
  not not2(xor1_not, d1);
  
  and and1(d2, a_not, b);
  and and2(d3, xor1_not, bin);
  or or1(bout, d2, d3);
  
endmodule
