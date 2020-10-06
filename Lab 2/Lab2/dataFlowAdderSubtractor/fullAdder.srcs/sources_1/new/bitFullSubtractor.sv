`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2019 09:54:25 PM
// Design Name: 
// Module Name: bitFullSubtractor
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


module bitFullSubtractor(input a,input b,input bin,output d, output bout);

  assign d = a ^ b ^ bin;
  assign bout = (~a&b) | ~(a ^ b) & bin;
endmodule

