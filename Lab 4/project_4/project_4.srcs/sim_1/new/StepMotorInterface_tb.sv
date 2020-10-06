`timescale 1ns / 1ps

module StepMotorInterface_tb;
reg clk, enable, direction,reverse, reset, Speed0, Speed1;
wire A, Ab, B, Bb, a, b, c, d, e, f, g, dp;
wire [3:0] an;
    
    StepMotorInterface uut( .clk(clk), .enable(enable), .direction(direction), .reverse(reverse),
     .reset(reset), .Speed0(Speed0), .Speed1(Speed1), .A(A), .Ab(Ab), .B(B), .Bb(Bb),
      .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .dp(dp), .an(an));
    initial 
    begin
        reset <= 0; #10;
        enable <= 1; direction <= 1; reverse <=0; Speed0 <= 0; Speed1 <= 0; #50;
        enable <= 1; direction <= 1; reverse <=0; Speed0 <= 0; Speed1 <= 1; #50;
        enable <= 1; direction <= 1; reverse <=0; Speed0 <= 1; Speed1 <= 0; #50;
        enable <= 1; direction <= 0; reverse <=1; Speed0 <= 0; Speed1 <= 0; #50;
        enable <= 1; direction <= 0; reverse <=1; Speed0 <= 0; Speed1 <= 1; #50;
        enable <= 1; direction <= 0; reverse <=1; Speed0 <= 1; Speed1 <= 0; #50;
    
    end
    
    always
        begin
            clk <= 1; #5;
            clk <= 0; #5;
        end
    
endmodule
