`timescale 1ns / 1ps

module masterReg(input logic reset, clock, output reg [7:0] countUp );

//will be used as for the timeup flag of the counter
wire finalCount;

//counter for master speed 1000ms
counterUp count  (reset, clock, 25,finalCount);

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
