`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2019 17:43:11
// Design Name: 
// Module Name: Med_Filt
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


module Med_Filt(
input clk,rst,load,                  
input pb_in1,pb_in2,
//////////////////////////////////////
output pb_out1,pb_out2,                   ////// This declaration Needed
output [7:0] median,                      //////  for running simuations
output reg [7:0] med_out,                 //////  But not while running on FPGA
output reg [7:0] data_out,
output reg [7:0] mem_out,
/////////////////////////////////////
output reg [3:0] anode,
output reg [6:0] cathode
    );
    

  reg [7:0] in_addr = 1;
  reg [7:0] out_addr = 1;
  reg [7:0] mem_out_addr = 1;
  integer i=1,j=4,k=4;

//////////////////////////////////////////////
//  wire pb_out1,pb_out2;          
//  wire [7:0] median;                    /////////  These declarations needed
//  reg [7:0] med_out;                    ////////   while running module on FPGA
//  reg [7:0] data_out;                   ////////
//  reg [7:0] mem_out;
//////////////////////////////////////////////
  
push_bttn p0(clk,rst,pb_in1,pb_out1);
push_bttn p1(clk,rst,pb_in2,pb_out2);

    reg [7:0] ROM [1:100];
    reg [7:0] mem [1:100];
   
    
          always@(posedge clk or posedge rst) begin
            if(rst)  begin
                 in_addr = 1;
            end
            
            else if(load) begin
            
            if(in_addr < 100)
                  in_addr = in_addr + 8'd1; 
           
               ROM[1]  = 8'h7D;
               ROM[2]  = 8'hE0;
               ROM[3]  = 8'h5B;
               ROM[4]  = 8'h73;
               ROM[5]  = 8'hF6;
               ROM[6]  = 8'hB;
               ROM[7]  = 8'hF9;
               ROM[8]  = 8'h31;
               ROM[9]  = 8'hAB;
               ROM[10] = 8'h96;
               ROM[11] = 8'hAD;
               ROM[12] = 8'h5D;
               ROM[13] = 8'h9F;
               ROM[14] = 8'hCF;
               ROM[15] = 8'h5;
               ROM[16] = 8'h16;
               ROM[17] = 8'hF9;
               ROM[18] = 8'hA7;
               ROM[19] = 8'h3B;
               ROM[20] = 8'h67;
               ROM[21] = 8'h20;
               ROM[22] = 8'h45;
               ROM[23] = 8'h42;
               ROM[24] = 8'h55;
               ROM[25] = 8'h27;
               ROM[26] = 8'h59;
               ROM[27] = 8'h20;
               ROM[28] = 8'hE2;
               ROM[29] = 8'h19;
               ROM[30] = 8'hEE;
               ROM[31] = 8'h66;
               ROM[32] = 8'hD;
               ROM[33] = 8'h58;
               ROM[34] = 8'hBC;
               ROM[35] = 8'hCB;
               ROM[36] = 8'h8B;
               ROM[37] = 8'hAF;
               ROM[38] = 8'hE4;
               ROM[39] = 8'hE;
               ROM[40] = 8'h4E;
               ROM[41] = 8'hC;
               ROM[42] = 8'h32;
               ROM[43] = 8'hB8;
               ROM[44] = 8'hB9;
               ROM[45] = 8'hE0;
               ROM[46] = 8'h95;
               ROM[47] = 8'h13;
               ROM[48] = 8'hEC;
               ROM[49] = 8'hCD;
               ROM[50] = 8'h49;
               ROM[51] = 8'h8B;
               ROM[52] = 8'hFC;
               ROM[53] = 8'hB7;
               ROM[54] = 8'hD6;
               ROM[55] = 8'h6F;
               ROM[56] = 8'h79;
               ROM[57] = 8'h8F;
               ROM[58] = 8'h45;
               ROM[59] = 8'hBF;
               ROM[60] = 8'h81;
               ROM[61] = 8'hA5;
               ROM[62] = 8'h4F;
               ROM[63] = 8'h24;
               ROM[64] = 8'h7A;
               ROM[65] = 8'h5D;
               ROM[66] = 8'hC9;
               ROM[67] = 8'hC7;
               ROM[68] = 8'hAB;
               ROM[69] = 8'h23;
               ROM[70] = 8'h6;
               ROM[71] = 8'h8F;
               ROM[72] = 8'h4D;
               ROM[73] = 8'hF0;
               ROM[74] = 8'hFB;
               ROM[75] = 8'h4A;
               ROM[76] = 8'hCD;
               ROM[77] = 8'hE5;
               ROM[78] = 8'h99;
               ROM[79] = 8'hE2;
               ROM[80] = 8'hF1;
               ROM[81] = 8'h8D;
               ROM[82] = 8'hBA;
               ROM[83] = 8'h94;
               ROM[84] = 8'h7;
               ROM[85] = 8'h72;
               ROM[86] = 8'hA5;
               ROM[87] = 8'h85;
               ROM[88] = 8'h5F;
               ROM[89] = 8'hEF;
               ROM[90] = 8'hD4;
               ROM[91] = 8'hD9;
               ROM[92] = 8'h5F;
               ROM[93] = 8'h98;
               ROM[94] = 8'hDF;
               ROM[95] = 8'hEF;
               ROM[96] = 8'hAB;
               ROM[97] = 8'h35;
               ROM[98] = 8'hA7;
               ROM[99] = 8'h13;
               ROM[100] = 8'h68;


                end     
       end  
 
 
     always@(posedge pb_out1 or posedge rst)  begin
         if(rst) begin
             out_addr <= 1;
             data_out <= 0;
         end
        else if(out_addr < 100) begin
            out_addr <= out_addr + 8'd1;
            data_out <= ROM[out_addr];
         end
     
     end
 
       
            reg [26:0] count;                       
            wire [1:0] anode_on; 
            reg [3:0] cathode_value;
            
            assign anode_on = count[20:19];
  
 
     always@(posedge clk or posedge rst)  begin
            if(rst)
                count <= 0;
            else 
                count <= count + 1;
        
     end 
 
 
   
    reg [7:0] sort_in1;
    reg [7:0] sort_in2;
    reg [7:0] sort_in3;
    reg [7:0] sort_in4;
    reg [7:0] sort_in5;
    reg [7:0] sort_in6;
    reg [7:0] sort_in7;
           

  
                always@(posedge pb_out2 or posedge rst)  begin          
               
                      if(rst) begin
                          j <= 4;
                          i <= 2;
                          med_out <= 0;
                          mem_out_addr <= 1;
                          mem_out <= 0;
                      end
                      
                      else if(load) begin
                      
                      mem[1] = ROM[1];
                      mem[2] = ROM[2];
                      mem[3] = ROM[3];
                      mem[4] = ROM[4];
                      mem[5] = ROM[5];
                      mem[6] = ROM[6];
                      mem[7] = ROM[7];
                      mem[8] = ROM[8];
                      mem[9] = ROM[9];
                      mem[10] = ROM[10];
                      mem[11] = ROM[11];
                      mem[12] = ROM[12];
                      mem[13] = ROM[13];
                      mem[14] = ROM[14];
                      mem[15] = ROM[15];
                      mem[16] = ROM[16];
                      mem[17] = ROM[17];
                      mem[18] = ROM[18];
                      mem[19] = ROM[19];
                      mem[20] = ROM[20];
                      mem[21] = ROM[21];
                      mem[22] = ROM[22];
                      mem[23] = ROM[23];
                      mem[24] = ROM[24];
                      mem[25] = ROM[25];
                      mem[26] = ROM[26];
                      mem[27] = ROM[27];
                      mem[28] = ROM[28];
                      mem[29] = ROM[29];
                      mem[30] = ROM[30];
                      mem[31] = ROM[31];
                      mem[32] = ROM[32];
                      mem[33] = ROM[33];
                      mem[34] = ROM[34];
                      mem[35] = ROM[35];
                      mem[36] = ROM[36];
                      mem[37] = ROM[37];
                      mem[38] = ROM[38];
                      mem[39] = ROM[39];
                      mem[40] = ROM[40];
                      mem[41] = ROM[41];
                      mem[42] = ROM[42];
                      mem[43] = ROM[43];
                      mem[44] = ROM[44];
                      mem[45] = ROM[45];
                      mem[46] = ROM[46];
                      mem[47] = ROM[47];
                      mem[48] = ROM[48];
                      mem[49] = ROM[49];
                      mem[50] = ROM[50];
                      mem[51] = ROM[51];
                      mem[52] = ROM[52];
                      mem[53] = ROM[53];
                      mem[54] = ROM[54];
                      mem[55] = ROM[55];
                      mem[56] = ROM[56];
                      mem[57] = ROM[57];
                      mem[58] = ROM[58];
                      mem[59] = ROM[59];
                      mem[60] = ROM[60];
                      mem[61] = ROM[61];
                      mem[62] = ROM[62];
                      mem[63] = ROM[63];
                      mem[64] = ROM[64];
                      mem[65] = ROM[65];
                      mem[66] = ROM[66];
                      mem[67] = ROM[67];
                      mem[68] = ROM[68];
                      mem[69] = ROM[69];
                      mem[70] = ROM[70];
                      mem[71] = ROM[71];
                      mem[72] = ROM[72];
                      mem[73] = ROM[73];
                      mem[74] = ROM[74];
                      mem[75] = ROM[75];
                      mem[76] = ROM[76];
                      mem[77] = ROM[77];
                      mem[78] = ROM[78];
                      mem[79] = ROM[79];
                      mem[80] = ROM[80];
                      mem[81] = ROM[81];
                      mem[82] = ROM[82];
                      mem[83] = ROM[83];
                      mem[84] = ROM[84];
                      mem[85] = ROM[85];
                      mem[86] = ROM[86];
                      mem[87] = ROM[87];
                      mem[88] = ROM[88];
                      mem[89] = ROM[89];
                      mem[90] = ROM[90];
                      mem[91] = ROM[91];
                      mem[92] = ROM[92];
                      mem[93] = ROM[93];
                      mem[94] = ROM[94];
                      mem[95] = ROM[95];
                      mem[96] = ROM[96];
                      mem[97] = ROM[97];
                      mem[98] = ROM[98];
                      mem[99] = ROM[99];
                      mem[100] = ROM[100];
                      
                                            sort_in1 = mem[1];
                                            sort_in2 = mem[2];
                                            sort_in3 = mem[3];
                                            sort_in4 = mem[4];
                                            sort_in5 = mem[5];
                                            sort_in6 = mem[6];
                                            sort_in7 = mem[7];
                      
                      end
                      
                      else begin 
                      begin 
                           mem[i+2] = median  ;  
                       begin
                           med_out = median;
                      
                      sort_in1 = mem[i];
                      sort_in2 = mem[i + 1];
                      sort_in3 = mem[i + 2];
                      sort_in4 = mem[i + 3];
                      sort_in5 = mem[i + 4];
                      sort_in6 = mem[i + 5];
                      sort_in7 = mem[i + 6];
                      
                       end

                      if(i < 94)
                            i = i + 1;
                      else 
                          i = 2;
                      
                   end   
                       mem_out = mem[mem_out_addr];
                        
                      if(mem_out_addr < 97)
                          mem_out_addr = mem_out_addr + 8'd1;                    
           
              end
                    
              end
              
              
         
              
       
   sort s0(.clk(clk),.rst(rst),.in({sort_in1,sort_in2,sort_in3,sort_in4,sort_in5,sort_in6,sort_in7}),.med(median));
   

   
    always@(posedge clk or posedge rst)  begin
            
                        if(rst) begin
                            cathode_value = 0;      
                        end
                        else begin
                        case(anode_on)
            
                              2'b00 : begin
            
                                          anode = 4'b1110;
                                          cathode_value = data_out[3:0];

            
                                      end
            
                              2'b01 : begin
            
                                          anode = 4'b1101;
                                          cathode_value = data_out[7:4];            
                                      end

                              2'b10 : begin
            
                                          anode = 4'b1011;
                                         cathode_value = mem_out[3:0];
            
                                      end
            
                              2'b11 : begin
            
                                          anode = 4'b0111;
                                          cathode_value = mem_out[7:4];          
            
                                      end
                                      
                            default : cathode_value = 7'bz;     
                              
            
                        endcase
            
                    end
            end
            
       /////////////// Multiplexing for cathode values /////////////////////////
            
            always@(posedge clk)
            begin
            
                            case(cathode_value)
            
                                    4'hf : cathode = 7'b0111000;
            
                                    4'he : cathode = 7'b0110000;
            
                                    4'hd : cathode = 7'b1000010;
            
                                    4'hc : cathode = 7'b0110001;
            
                                    4'hb : cathode = 7'b1100000;
            
                                    4'ha : cathode = 7'b0001000;
            
                                    4'h9 : cathode = 7'b0000100;
            
                                    4'h8 : cathode = 7'b0000000;
            
                                    4'h7 : cathode = 7'b0001111;
            
                                    4'h6 : cathode = 7'b0100000;
            
                                    4'h5 : cathode = 7'b0100100;
            
                                    4'h4 : cathode = 7'b1001100;
            
                                    4'h3 : cathode = 7'b0000110;
            
                                    4'h2 : cathode = 7'b0010010;
            
                                    4'h1 : cathode = 7'b1001111;
            
                                    4'h0 : cathode = 7'b0000001;
            
                                 default : cathode = 7'bz; 
            
                            endcase
              end
endmodule
