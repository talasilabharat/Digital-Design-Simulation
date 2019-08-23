`timescale 1ns / 1ps

module mux_tb;

	// Inputs
	reg [1:0] s;
	reg [3:0] i;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux_4x1_beh uut (
		.y(y), 
		.s(s), 
		.i(i)
	);

// initial begin box are concuurently executed if there are two such blocks
	initial begin
		// Initialize Inputs
		s = 0;
		i = 4'b1100;

		// Wait 100 ns for global reset to finish
        
		// Add stimulus here
		repeat(50)
			#10s[0]=~s[0];
			
		// statements inside the nitial block are sequentially executed
		/*
		repeat(50)
			#20s[1]=~s[1];
		*/
		
	end
	
	initial 
		begin
			repeat(50)
			#20s[1]=~s[1];
		end
	      
endmodule

