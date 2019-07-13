`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2019 17:40:13
// Design Name: 
// Module Name: sort
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


module sort(clk,rst,in,med);
    parameter NUM_VALS = 7;
    parameter SIZE     = 8;
   
    input  wire clk,rst;
    input  wire [NUM_VALS*SIZE-1:0] in;
    output [SIZE-1:0] med ;
   
    reg  [NUM_VALS*SIZE-1:0] out = 0; 
    reg [NUM_VALS*SIZE-1:0] sorted_bus;
    
    assign med = out[31:24];
   
    always @(posedge clk) begin
        if(rst)
            out <= 0;
        else
            out <= sorted_bus;
    end

    integer i, j;
    reg [SIZE-1:0] temp;
    reg [SIZE-1:0] array [1:NUM_VALS];
    always @* begin  
        for (i = 0; i < NUM_VALS; i = i + 1) begin
            array[i+1] = in[i*SIZE +: SIZE];
        end

        for (i = NUM_VALS; i > 0; i = i - 1) begin
            for (j = 1 ; j < i; j = j + 1) begin
                if (array[j] < array[j + 1]) begin
                    temp         = array[j];
                    array[j]     = array[j + 1];
                    array[j + 1] = temp;
                end 
            end
        end

       for (i = 0; i < NUM_VALS; i = i + 1) begin
            sorted_bus[i*SIZE +: SIZE] = array[i+1];
       end
    end
endmodule