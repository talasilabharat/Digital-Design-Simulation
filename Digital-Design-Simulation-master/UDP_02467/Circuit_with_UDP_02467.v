`timescale 1ns / 1ps

module Circuit_with_UDP_02467(e,f,a,b,c,d);
	output e,f;
	input a,b,c,d;
	
	UDP_02467 G1(e,a,b,c);
	and 		 (f,e,d);

endmodule
