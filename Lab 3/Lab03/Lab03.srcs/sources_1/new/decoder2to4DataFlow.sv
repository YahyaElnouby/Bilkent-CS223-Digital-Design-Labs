`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2019 09:12:42 PM
// Design Name: 
// Module Name: decoder2to4DataFlow
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


module decoder2to4DataFlow(
input logic i0,i1,
output logic z0,z1,z2,z3
    );
    
    assign z0 = ~i0&~i1;
    assign z1 = ~i0&i1;
    assign z2 = i0&~i1;
    assign z3 = i0&i1;
    
endmodule
