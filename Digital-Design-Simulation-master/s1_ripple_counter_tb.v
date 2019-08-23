`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:30:28 10/19/2016
// Design Name:   s1_ripple_counter
// Module Name:   C:/Users/abhij/Desktop/class/session2/s1_ripple_counter_tb.v
// Project Name:  session2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: s1_ripple_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module s1_ripple_counter_tb;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire [3:0] Q;

	// Instantiate the Unit Under Test (UUT)
	s1_ripple_counter uut (
		.clk(clk), 
		.reset(reset), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#100;
      reset = 0;  
		// Add stimulus here

	end
	
	always
	begin
		#10 clk = ~clk;
	end
      
      
endmodule

