`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:25:13 10/19/2016 
// Design Name: 
// Module Name:    s1_ripple_counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module s1_d_ff(
    input d,
    input clk,
	 input reset,
    output reg q
    );

	always@(posedge clk or reset)
	begin
	if(reset)
	q <= 0;
	
	else
	q <= d;
	end
endmodule

module s1_ripple_counter(
    input clk,
    input reset,
    output [3:0] Q
    );
	
	 s1_d_ff sd11(~Q[0],clk,reset,Q[0]);
	 s1_d_ff sd22(~Q[1],~Q[0],reset,Q[1]);
	 s1_d_ff sd33(~Q[2],~Q[1],reset,Q[2]);
	 s1_d_ff sd44(~Q[3],~Q[2],reset,Q[3]);
	 

endmodule
