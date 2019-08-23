`timescale 1ns / 1ps

module JK_Functional(Q,J,K,clk,reset);
	output Q;
	input J,K,clk,reset;
	reg Q;
	
	always @(posedge clk,negedge reset)
	if(~reset)
		Q<=0;
	else
		case({J,K})
			2'b00:Q<=Q;
			2'b01:Q<=0;
			2'b10:Q<=1;
			2'b11:Q<=~Q;
		endcase
endmodule
