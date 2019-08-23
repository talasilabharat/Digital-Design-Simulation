`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:52:37 10/18/2016 
// Design Name: 
// Module Name:    p5_ring_counter 
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
module p2_d_ff_preset(
    input d,
    input clk,
	 input reset,
	 input preset,
    output reg q
    );

	always@(posedge clk or reset)
	begin
	if(reset)
	q <= 0;
	
	else if(preset)
	q <= 1;
	
	else
	q <= d;
	end
endmodule

module p5_ring_counter(
    input clk,
	 input reset,
	 input preset,
    inout [3:0] q
    );
	
	p2_d_ff_preset d111(q[3],clk, reset, preset, q[0]);
    p2_d_ff d222(q[0],clk, reset, q[1]);
    p2_d_ff d333(q[1],clk, reset, q[2]);
    p2_d_ff d444(q[2],clk, reset, q[3]);

endmodule


