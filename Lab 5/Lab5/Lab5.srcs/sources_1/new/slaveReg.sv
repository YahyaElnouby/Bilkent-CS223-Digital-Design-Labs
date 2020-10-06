`timescale 1ns / 1ps

module slaveReg(input logic reset, clock, output reg [7:0] countUp );

//will be used as for the timeup flag of the counter
wire finalCount;

//counter for slave speed 500 ms
counterUp count (reset, clock,50, finalCount);

always @ (posedge finalCount or posedge reset)
begin 
    if (reset)
           begin 
              countUp = 0;
           end
     else
         begin
             countUp++;
         end
        
  end      
endmodule
