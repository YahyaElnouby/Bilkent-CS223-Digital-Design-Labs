`timescale 1ns / 1ps

module ClkDiv_tb;
reg Speed0, Speed1, reset, clk;
wire new_clk;


ClkDiv uut( .input0(Speed0), .input1(Speed1), .reset(reset), .clock(clk), .y(new_clk));
initial
begin
    reset = 1; clk = 1; #5;
    reset = 0; Speed0 = 1; Speed1 = 1; #20;
    reset = 0; Speed0 = 1; Speed1 = 0; #20;
    reset = 0; Speed0 = 0; Speed1 = 1; #20;
    reset = 0; Speed0 = 0; Speed1 = 0; #20;
end


always
        begin
            clk <= 1; #5;
            clk <= 0; #5;
        end


endmodule