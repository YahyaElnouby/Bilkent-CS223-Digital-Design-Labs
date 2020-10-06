`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2019 01:55:45 PM
// Design Name: 
// Module Name: decoder2to4
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


module decoder2to4(
input logic i0,i1,
output logic z0,z1,z2,z3);

reg z0,z1,z2,z3;

always@(i0,i1)
begin 
    if(i0 == 0 && i1==0)
    begin
        z0<=1; z1<=0;
        z2<=0; z3<=0;
    end
    else if (i0==0 && i1==1)
    begin
        z0<=0; z1<=1;
        z2<=0; z3<=0;
    end
    else if (i0==1 && i1==0)
    begin
        z0<=0; z1<=0;
        z2<=1; z3<=0;
    end
    else if (i0==1 && i1==1)
    begin
        z0<=0; z1<=0;
        z2<=0; z3<=1;
    end

end
endmodule
