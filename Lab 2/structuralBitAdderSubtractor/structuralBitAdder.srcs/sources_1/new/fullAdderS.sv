`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2019 10:23:56 PM
// Design Name: 
// Module Name: fullAdderS
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


module fullAdderS(
    input a,
    input b,
    input cin,
    output s,
    output cout
    );
    
    wire d1, d2, d3;

  xor xor1(d1, a, b);
  xor xor2(s, d1, cin);
  
  and and1(d2, a, b);
  and and2(d3, d1, cin);
  or or1(cout, d2, d3);

endmodule
