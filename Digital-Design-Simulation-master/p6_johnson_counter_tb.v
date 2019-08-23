`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:09:16 10/18/2016
// Design Name:   p5_ring_counter
// Module Name:   C:/Users/abhij/Desktop/class/session1/p5_ring_counter_tb.v
// Project Name:  session1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: p5_ring_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module p6_johnson_counter_tb;

	// Inputs
	reg clk;
	reg reset;
	reg preset;

	// Bidirs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	p6_johnson_counter uut (
		.clk(clk), 
		.reset(reset), 
		.preset(preset), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
      reset = 0;

		#100 preset = 1;
		#5	  preset = 0;
		// Add stimulus here

	end
	
	always
	begin
		#5 clk = ~clk;
	end
      
endmodule

