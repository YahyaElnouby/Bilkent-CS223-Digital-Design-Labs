`timescale 1ns / 1ps

module masterSlave(input logic reset, clock, master, slave, enableMaster, enableSlave , output logic masterOut, slaveOut, masterCout, slaveCout, output [6:0]seg,output dp, output [3:0] an);

    reg[7:0] hexaDisplay;    //register to store the count for the seven-segment display
    
    //slave register, clear, timeup flag
    reg clearSlave;               //to reset slave count to zero 
    wire[7:0] slaveRegOut;         //store the count value of slave
    wire finalCountSlave;     //timeup flag of slave
    
    //master register, clear, timeup flag
    reg clearMaster;           //to reset master count to zero
    wire finalCountMaster;  //timeup flag of master
    wire [7:0] masterRegOut;     //store the count value of master
    
    
   //slave counter and slave register to save the value of the slave counter independently
    counterUp slaveCounter (clearSlave , clock ,50, finalCountSlave);
    slaveReg slaveReg1(clearSlave,clock,slaveRegOut);
    
  //master counter and master register to save the value of the master counter independently
    counterUp masterCounter (clearMaster,clock,25,finalCountMaster);
    masterReg masterReg1(clearMaster,clock,masterRegOut);
    
    //Output States when certain inputs are changed
    always @(posedge clock or posedge reset)
    begin
       
           if( (!master && !slave && !enableMaster && !enableSlave) || (reset))
                 begin
                       masterOut =0; slaveOut = 0; masterCout =0;
                       slaveCout = 0; hexaDisplay = 0;
                       clearMaster = 1; clearSlave = 1;
                 end
            
             else if(enableMaster && !slave || master)
                 begin
                    clearSlave = 1; masterOut = 1;
                    clearMaster= 0;  slaveOut =0; slaveCout = 0;   
                    masterCout = finalCountMaster;
                    hexaDisplay = masterRegOut;
              
                 end
         
                else if(!master && slave &&!enableMaster || !master && !enableMaster && enableSlave ||!master && slave && enableMaster)
                            begin
                               clearMaster = 1; slaveOut = 1;
                               clearSlave = 0; masterOut= 0; masterCout = 0;
                               slaveCout = finalCountSlave;
                               hexaDisplay = slaveRegOut;
                        end                     
            end
       Seven_Seg sev(clock, hexaDisplay[3:0], hexaDisplay[7:4],0,0 ,seg, dp ,an);
endmodule


