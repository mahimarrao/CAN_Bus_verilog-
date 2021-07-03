`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.06.2021 16:10:08
// Design Name: 
// Module Name: test1_logic
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


module bus_top #( parameter N=2)( input [8:0] inp[N-1:0],
    output status,
    output [7:0] out,
    input rst);
    
    reg status;
    wire [7:0] value=1,cur,p=8'b00000000;
    
    assign value = 8'b11111111;
    
   
    
    genvar i;
    generate for(i=0;i<N;i=i+1) begin
    if (inp[i][8]==1)  
    begin
    assign cur = inp[i][7:0];
    assign value=value & cur;
    assign p =  (value<cur)?cur:p;
    
    end 
    end 
    
    endgenerate
    
    
    
    
endmodule
