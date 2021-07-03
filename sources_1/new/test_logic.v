`timescale 1ns/1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2021 16:19:32
// Design Name: 
// Module Name: test_logic
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


module test_logic (
    input [7:0]a,
    input [7:0] b,
    output [7:0] data,
    output out_a,
    output out_b,
    output out,
    input clk,
    input rst,
    input status
   
    
    );
    
   
    reg out,out_a,out_b;
    reg [7:0] temp_a;
    reg [7:0] temp_b;
    reg [7:0] data;
    
    //reg var;
    
    
    always @ (posedge clk)
    
    begin

    
    
    if(rst) 
    begin
    temp_a<= 8'b00000000;
    temp_b<= 8'b00000000;
    data<=8'b00000000;
    end
     
    else if (status)
    begin
    temp_a <= a ;
    temp_b <= b ;
    
    end
    
    else
    begin
    //assign var = temp_a[7] & temp_b[7];
   
    
    out_a <= temp_a[7];
    out_b <=  temp_b[7];
    out <= temp_a[7] & temp_b[7];
    
    temp_a<=temp_a<<1;
    temp_b <= temp_b<<1;
    
    
    
    end
    end 
    
    
    
    always @ (negedge clk)
    begin
    
    if(out!=out_a)
    begin
    data <= b;
    temp_a <= 8'b11111111;
    
    end
    
    if(out!=out_b)
    begin
    data<= a;
    temp_b <= 8'b11111111;
    
    end
    end
   
          
endmodule
/*

module something (input en, 
                  output [15:0] bus
                 ); 
  reg [15:0] data = 16'hABCD;  // some value;
  assign bus = (en)? data : 16'hZZZZ;
endmodule
*/