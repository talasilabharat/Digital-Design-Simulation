`timescale 1ns / 1ps

module mux_tb;

	// Inputs
	reg s;
	reg [1:0] i;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux_2x1_df uut (
		.y(y), 
		.s(s), 
		.i(i)
	);

	initial begin
		// Initialize Inputs
		s = 0;
		i = 2'b10;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here
		repeat(50)
			#30s=~s;
		//#50i[0]=~i[0];
		//#40i[1]=~i[1];

	end
	
		initial #500 $finish;
      
endmodule

