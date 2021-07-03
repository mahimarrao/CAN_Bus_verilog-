`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2021 22:04:20
// Design Name: 
// Module Name: test_logic_tb
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


module test_logic_tb(
    
    );
    
    reg [7:0] a;
    reg [7:0] b;
    
    wire out,out_a,out_b;
    wire [7:0] data;
    
    reg clk,load,rst;
    
    
    test_logic TL(a,b,data,out_a,out_b,out,clk,rst,load);
    initial 
    begin
    rst=0;clk=0;load=0;
    
    #20 rst = 1;
    #20 rst =0;
    #20 a=8'b11100110;b=8'b11000111;
    #20 load=1;
    #20 load=0;
    //#100 a=8'b10010010;b=8'b10011010;
    
    #170 rst = 1;
    #20 rst =0;
    #20 a=8'b11101110;b=8'b11110011;
    #20 load=1;
    #20 load=0;
    #170 $finish;
    end 
    always #10 clk =~ clk;
    endmodule

