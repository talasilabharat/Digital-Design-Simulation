`timescale 1ns / 1ps

module Circuit_Boolean_CA(E,F,A,B,C,D);
	output E,F;
	input A,B,C,D;
	
	assign E=A|(B&C)|(~B&D);
	assign F=(~B&C)|(B&~C&D);


endmodule
