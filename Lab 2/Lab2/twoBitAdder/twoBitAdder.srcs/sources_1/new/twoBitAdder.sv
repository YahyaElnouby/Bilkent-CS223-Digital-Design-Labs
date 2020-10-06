`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2019 10:57:47 PM
// Design Name: 
// Module Name: twoBitAdder
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
module fullAdder(a, b, cin, s, cout);

  input a, b, cin;
  output s, cout;
  wire d1, d2, d3;

  xor xor1(d1, a, b);
  xor xor2(s, d1, cin);
  
  and and1(d2, a, b);
  and and2(d3, d1, cin);
  or or1(cout, d2, d3);

endmodule

module twoBitAdder(input a, input b,input c,input d, input cin, output s0, output s1,output cout);
  wire c1;
  
  fullAdder adder1(a, b, cin, s0, c1);
  fullAdder adder2(c, d, c1, s1, cout);
    
endmodule
