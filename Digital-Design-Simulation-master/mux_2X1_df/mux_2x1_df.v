`timescale 1ns / 1ps

module mux_2x1_df(y,s,i);
	output y;
	input[1:0] i;
	input s;
	
	assign y = s ? i[1] : i[0];

endmodule
