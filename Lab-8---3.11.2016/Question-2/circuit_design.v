module mux(o,a,b,s);
	input a,b,s;
	output o;
	assign o = s ? a:b;
endmodule
