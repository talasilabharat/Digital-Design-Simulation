`timescale 1ns / 1ps

module ripple_carry_tb;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg cin;

	// Outputs
	wire [3:0] S;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	ripple_carry_4_bit_adder uut (
		.S(S), 
		.cout(cout), 
		.A(A), 
		.B(B), 
		.cin(cin)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		A=4'b1000;
		B=4'b0100;
		// Add stimulus here

	end
	
	initial #200 $finish;
      
endmodule

