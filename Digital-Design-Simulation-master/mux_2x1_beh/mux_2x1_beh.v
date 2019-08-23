`timescale 1ns / 1ps

module mux_2x1_beh(y,i,s);
	output y;
	input[1:0] i;
	input s;
	reg y;
	
	//always@(s,i[0],i[1])
	
	always@(s or i[0] or i[1])
		if(s)y=i[1];
		else y=i[0];

endmodule
