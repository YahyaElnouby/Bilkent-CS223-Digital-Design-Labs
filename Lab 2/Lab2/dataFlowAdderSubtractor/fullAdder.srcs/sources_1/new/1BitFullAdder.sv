`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2019 09:24:32 PM
// Design Name: 
// Module Name: 1BitFullAdder
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


module BitFullAdder(input a, input b,input cin, output s,output cout);
    
    assign s = a ^ b ^ cin;
    assign cout = (a&b) | (a ^ b) & cin;

endmodule
