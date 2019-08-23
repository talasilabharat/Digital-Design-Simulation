`timescale 1ns / 1ps

module JK_tb;

	// Inputs
	reg J;
	reg K;
	reg clk;
	reg reset;

	// Outputs
	wire Q;

	// Instantiate the Unit Under Test (UUT)
	JK_Functional uut (
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
		
		// Add stimulus here
		#50;
		J=0;
		K=1;
		#50;
		J=1;
		K=0;
		#50;
		J=1;
		K=1;
		
	end
	
	initial forever #10clk=~clk;
	initial #250 $finish;
      
endmodule

