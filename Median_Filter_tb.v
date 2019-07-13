`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2019 09:37:45
// Design Name: 
// Module Name: Median_Filter_tb
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


module Median_Filter_tb();

    reg clock;
    reg reset,load;
    reg pb_in1,pb_in2;
    wire pb_out1,pb_out2;
    wire [7:0] median;
    wire [7:0] data_out;      
     wire [7:0] med_out;
     wire [7:0] mem_out;
   wire [3:0] anode;
    wire [6:0] cathode;

    
       
    
   Med_Filt uut(
           clock,
            reset,
            load,
            pb_in1,pb_in2,
            pb_out1,pb_out2,
            median,
             med_out,
            data_out,
            mem_out,
            anode,
            cathode          
           );

initial begin

   reset = 1'b1;
   clock = 1'b0;
   pb_in1 = 1'b0;
   pb_in2 = 1'b0;
    
   #5 reset = 1'b0;
      load = 1'b1;
   #2;
   #7 
      pb_in1 = 1'b1;
   #10 pb_in1 = 1'b0;
   
   #7;
#6 pb_in1 = 1'b1;
#10 pb_in1 = 1'b0;
  
   #7;
   #6 pb_in1 = 1'b1;
      
   #10 pb_in1 = 1'b0;
    
   
#7;
#4 pb_in1 = 1'b1;

#8 pb_in1 = 1'b0;
  
   
   #7;
   #4 pb_in1 = 1'b1;
    
   #8 pb_in1 = 1'b0;
    
#7;
#4 pb_in1 = 1'b1;
  
#8 pb_in1 = 1'b0;
   
         
#7;
#4 pb_in1 = 1'b1;
   
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;


#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;
#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;
#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;
#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;
#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;

#7;
#4 pb_in1 = 1'b1;
 
#8 pb_in1 = 1'b0;


#200;
#4 pb_in2 = 1'b1;
      
#8 pb_in2 = 1'b0;
   load = 1'b0;
   
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;


#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;


#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;


#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;


#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;


#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;


#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;


#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;


#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;


#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;


#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;

#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;
#20;
#4 pb_in2 = 1'b1;
   
#8 pb_in2 = 1'b0;























end

always
  #2 clock = ~clock;
endmodule
