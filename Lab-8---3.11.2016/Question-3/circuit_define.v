module mux(o,a,b,s);
	output o;
	input a,b,s;
	reg o;
	always @(a or b or s)
		if(s == 1)
			o = a;
		else 
			o = b;
endmodule
