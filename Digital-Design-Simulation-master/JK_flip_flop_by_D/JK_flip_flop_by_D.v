`timescale 1ns / 1ps

module JK_flip_flop_D(Q,J,K,clk,reset);
	output Q;
	input J,K,reset,clk;
	wire DQ;
	assign DQ =(J&~Q)|(~K&Q);
	D_flip_flop D1(Q,DQ,clk,reset);

endmodule


module D_flip_flop(Q,D,clk,reset);
	output Q;
	input D,reset,clk;
	reg Q;
	
	always @(posedge clk,negedge reset)
		begin
		if(~reset)
			Q<=0;
		else
			Q<=D;
		end
endmodule
