`timescale 1ns / 1ps

module Mealy_Detector_tb;

	// Inputs
	reg x;
	reg clk;
	reg reset;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	Mealy_Detetor_by_case uut (
		.Y(Y), 
		.x(x), 
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#10;
		reset=1;
   
		// Add stimulus here
		x=1;
		#102;
		x=0;

	end
	
	initial forever #10clk=~clk;
	initial #200 $finish;
      
endmodule

