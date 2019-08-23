`timescale 1ns / 1ps

module Comparator_tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg cas_lt;
	reg cas_gt;
	reg cas_eq;

	// Outputs
	wire lt;
	wire gt;
	wire eq;

	// Instantiate the Unit Under Test (UUT)
	Comparator uut (
		.lt(lt), 
		.gt(gt), 
		.eq(eq), 
		.A(A), 
		.B(B), 
		.cas_lt(cas_lt), 
		.cas_gt(cas_gt), 
		.cas_eq(cas_eq)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		cas_lt = 0;
		cas_gt = 0;
		cas_eq = 0;

		// Wait 100 ns for global reset to finish
		#100;
      A=4'b0001;
		B=4'b0010;
		cas_lt = 1;
		cas_gt = 1;
		cas_eq = 0;
		#100;
		A=4'b0101;
		B=4'b0010;
		cas_lt = 1;
		cas_gt = 1;
		cas_eq = 0;
		#100;
		A=4'b0110;
		B=4'b0110;
		cas_lt = 1;
		cas_gt = 0;
		cas_eq = 0;
		#100;
		A=4'b0110;
		B=4'b0110;
		cas_lt = 0;
		cas_gt = 1;
		cas_eq = 0;
		#100;
		A=4'b0110;
		B=4'b0110;
		cas_lt = 0;
		cas_gt = 0;
		cas_eq = 1;		
		// Add stimulus here

	end
      
endmodule

