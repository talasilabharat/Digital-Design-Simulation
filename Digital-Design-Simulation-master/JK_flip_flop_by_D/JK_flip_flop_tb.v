`timescale 1ns / 1ps

module JK_flip_flop_tb;

	// Inputs
	reg J;
	reg K;
	reg clk;
	reg reset;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	JK_flip_flop_D uut (
		.Q(Q), 
		.J(J), 
		.K(K), 
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		J = 0;
		K = 0;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#50;
		reset=1;
		J=0;
		K=1;
		#50;
		J=1;
		K=0;
		#50;
		J=1;
		K=1;
		// Add stimulus here

	end
   
	initial begin 
		forever 
		#10clk=~clk;
	end
	
	initial #200 $finish;
endmodule

