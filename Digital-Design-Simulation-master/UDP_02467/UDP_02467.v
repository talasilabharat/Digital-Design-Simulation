`timescale 1ns / 1ps

primitive UDP_02467(D,A,B,C);
	output D;
	input A,B,C;
	
	table
	// A	B	C	:	D
		0	0	0	:	1;
		0	0	1	:	0;
		0	1	0	:	1;
		0	1	1	:	0;
		1	0	0	:	1;
		1	0	1	:	0;
		1	1	0	:	1;
		1	1	1	:	1;
	endtable
endprimitive

