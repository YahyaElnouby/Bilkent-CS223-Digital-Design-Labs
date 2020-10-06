`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2019 10:48:44 PM
// Design Name: 
// Module Name: testBenchFullAdder_tb
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


module testBenchFullAdder_tb;
// input
	reg a; reg b; reg cin;
	// outputs
	wire s; wire cout;
	// Instantiate 
	fullAdderS uut(.a(a), .b(b), .cin(cin), .s(s), .cout(cout));
	initial begin
	  #100;
	  #10 a=0; b=0; cin=0;
	  #10 a=0; b=0; cin=1;
	  #10 a=0; b=1; cin=0;
	  #10 a=0; b=1; cin=1;
	  #10 a=1; b=0; cin=0;
	  #10 a=1; b=0; cin=1;
	  #10 a=1; b=1; cin=0;
	  #10 a=1; b=1; cin=1;
	end
	initial $monitor($time,,"a=%d,b=%d,cin=%d, s=%d, cout=%d", a,b,cin,s,cout);
endmodule
