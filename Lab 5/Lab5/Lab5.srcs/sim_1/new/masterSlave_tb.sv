module masterSlave_tb();

reg clock, reset, master, slave, enableMaster, enableSlave;
wire masterOut, slaveOut, masterCout, slaveCout, seg, dp, an;

masterSlave uut (.reset(reset),.clock(clock), .master(master),.slave(slave), .enableMaster(enableMaster), .enableSlave(enableSlave));
initial begin

reset <=1; #1000;

reset<= 0; enableMaster <= 1; #1000;

reset <= 0; master <= 0; slave <= 0; enableMaster <=0; enableSlave <= 0; #1000;

reset<= 0; master <=1; #1000;

reset<= 0; master = 0; enableMaster =0; slave =1; #1000;

reset<= 0; master = 0; enableMaster =0; enableSlave =1; #1000;


end
  always
    begin 
       clock = 0; #10000;
       clock = 1; #10000;
    end
 endmodule

