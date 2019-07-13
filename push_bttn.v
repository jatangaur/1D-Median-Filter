`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2019 17:49:27
// Design Name: 
// Module Name: push_bttn
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


module push_bttn(clk,rst,pb_in,pb_out);

input clk,rst,pb_in;
output pb_out;

//reg[1:0]cnt;
wire Q1,Q2,Q2_bar;

//always@(posedge clk, posedge rst)
//        begin
//            if(rst)
//                cnt<=0;
//             else
//                cnt<=cnt+1;
//        end
        
d_ff u2(clk,rst,pb_in,Q1);
d_ff u3(clk,rst,Q1,Q2);

assign Q2_bar = ~Q2;
assign pb_out = Q1 & Q2_bar;

endmodule