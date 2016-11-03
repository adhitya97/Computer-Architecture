// 2:4 Decoder using Data Flow Model
// Equivalent to writing input and output separately
module decoder_2X4_dataflow	(a, b, e, d);

	input a, b, e;
	output [0:3]d;
	assign 	d[0] = ~(~a & ~b & ~e),
		d[1] = ~(~a &  b & ~e),
		d[2] = ~( a & ~b & ~e),
		d[3] = ~( a &  b & ~e);

endmodule
