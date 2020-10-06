`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2019 06:59:55 PM
// Design Name: 
// Module Name: multiplexer4DataFlow
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


module multiplexer4DataFlow (input logic i0,i1,i2,i3,s0,s1,
output logic y);

assign y = i0&~s1&~s0 | i1&s1&~s0 | i2&~s1&s0 | i3&s1&s0;



endmodule
