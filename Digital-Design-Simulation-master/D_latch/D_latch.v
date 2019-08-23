`timescale 1ns / 1ps

module D_latch(q,d,enable);
	output q;
	input d,enable;
	reg q;
	
	always @(enable,d)
		begin
			if(enable) q=d;
		end

endmodule
