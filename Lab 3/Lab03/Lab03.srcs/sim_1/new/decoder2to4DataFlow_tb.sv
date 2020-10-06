`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2019 09:15:25 PM
// Design Name: 
// Module Name: decoder2to4DataFlow_tb
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


module decoder2to4DataFlow_tb;

reg i0,i1;
wire z0,z1,z2,z3;

decoder2to4DataFlow uut (.i0(i0),.i1(i1),.z0(z0),.z1(z1),.z2(z2),.z3(z3));
initial begin
#100

#10; i0=0; i1=0;
#10; i0=0; i1=1;
#10; i0=1; i1=0;
#10; i0=1; i1=1;
end

endmodule
