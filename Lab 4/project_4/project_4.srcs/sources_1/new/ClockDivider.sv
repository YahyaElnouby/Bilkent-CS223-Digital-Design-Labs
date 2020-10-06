`timescale 1ns / 1ps

module ClockDivider(input logic b0, b1, reset, wire clk, output reg new_clk);

//counter
integer counter = 0;

// Counter Limits
localparam slowS = 15000000;
localparam mediumS = 10000000;
localparam fastS = 500000;

initial begin
new_clk <= 0;
end

always@ (posedge clk)
begin
counter<= counter+1;
// if(reset)
//    new_clk= 0;

    //The slowest speed for the car
    if (b0 && !b1)
    begin
         if(counter == slowS-1)
            begin
                new_clk <= ~new_clk;
                counter <=0;
               
            end
    end
    //speed2 medium speed
    if (!b0 && b1)
    begin
        if(counter == mediumS-1)
            begin
                new_clk <= ~new_clk;
                counter <= 0;
                
            end
    end
     //speed3 fastest speed
     if (!b0 && !b1)
     begin
   
         if(counter == fastS-1)
            begin
            new_clk <= ~new_clk;
            counter <= 0;
            
            end
     end
end

endmodule
