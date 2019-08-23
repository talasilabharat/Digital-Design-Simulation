`timescale 1ns / 1ps

module T_flip_flop_by_D(Q,T,clk,reset);
	output Q;
	input T,clk,reset;
	wire DT;
	assign DT=T^Q;
	D_flip_flop D1(Q,DT,clk,reset);
	
endmodule

module D_flip_flop(Q,D,clk,reset);
	output Q;
	input D,clk,reset;
	reg Q;
	
	always @ (posedge clk,negedge reset)
		if(~reset)
			Q<=1'b0;
		else
			Q<=D;
endmodule
