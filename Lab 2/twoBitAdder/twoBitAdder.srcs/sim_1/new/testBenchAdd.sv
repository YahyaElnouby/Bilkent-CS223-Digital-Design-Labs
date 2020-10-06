module testFullAdder;
// input
  reg a, b, c, d; reg cin;
// outputs
  wire s0, s1; wire cout;
// Instantiate 

  twoBitAdder uut(.a(a), .b(b), .c(c),.d(d), .cin(cin), .s0(s0), .s1(s1), .cout(cout));
initial begin
  #100;
  #10 a=0;  b=0; c=0;  d=0; cin=0;
  #10 a=0;  b=0; c=0;  d=1; cin=0;
  #10 a=0;  b=0; c=1;  d=0; cin=0;
  #10 a=0;  b=0; c=1;  d=1; cin=0;
  #10 a=0;  b=1; c=0;  d=0; cin=0;
  #10 a=0;  b=1; c=0;  d=1; cin=0;
  #10 a=0;  b=1; c=1;  d=0; cin=0;
  #10 a=0;  b=1; c=1;  d=1; cin=0;
  #10 a=1;  b=1; c=0;  d=0; cin=0;
  #10 a=1;  b=0; c=0;  d=1; cin=0;
  #10 a=1;  b=0; c=1;  d=0; cin=0;
  #10 a=1;  b=0; c=1;  d=1; cin=0;
  #10 a=1;  b=1; c=0;  d=0; cin=0;
  #10 a=1;  b=1; c=0;  d=1; cin=0;
  #10 a=1;  b=1; c=1;  d=0; cin=0;
  #10 a=1;  b=1; c=1;  d=1; cin=0;
  #10 a=0;  b=0; c=0;  d=0; cin=1;
  #10 a=0;  b=0; c=0;  d=1; cin=1;
  #10 a=0;  b=0; c=1;  d=0; cin=1;
  #10 a=0;  b=0; c=1;  d=1; cin=1;
  #10 a=0;  b=1; c=0;  d=0; cin=1;
  #10 a=0;  b=1; c=0;  d=1; cin=1;
  #10 a=0;  b=1; c=1;  d=0; cin=1;
  #10 a=0;  b=1; c=1;  d=1; cin=1;
  #10 a=1;  b=1; c=0;  d=0; cin=1;
  #10 a=1;  b=0; c=0;  d=1; cin=1;
  #10 a=1;  b=0; c=1;  d=0; cin=1;
  #10 a=1;  b=0; c=1;  d=1; cin=1;
  #10 a=1;  b=1; c=0;  d=0; cin=1;
  #10 a=1;  b=1; c=0;  d=1; cin=1;
  #10 a=1;  b=1; c=1;  d=0; cin=1;
  #10 a=1;  b=1; c=1;  d=1; cin=1;
end
  initial $monitor($time,,"a=%b, b=%b, c=%b, b=%b, cin=%b, s0=%b, s1=%b, cout=%b", a,b,c,d,cin,s0,s1,cout);
endmodule