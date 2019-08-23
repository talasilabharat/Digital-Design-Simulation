`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:44:37 10/19/2016 
// Design Name: 
// Module Name:    s4_universal 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module s4_universal(
    input [3:0] inp1,
	 input [1:0] sel, 
    output reg [3:0] out1,
    inout sr_ser,
    inout sl_ser,
    inout clk,
    input clr
    );

	always@(posedge clk or clr or sel)
	begin
	if(~clr)
	out1 <= 4'b0000;
	
	else
	
	case(sel)
	2'b00: 
			out1 <= out1;
			
	2'b01:
	begin
			out1 <= {sr_ser,out1[3:1]};
	end
			
	2'b10:
	begin
				out1 <= {out1[2:0],sl_ser};
	end	
			
	2'b11: out1 <= inp1;
	endcase
	end

endmodule
