module circuit(out, a, b, s);
	input a, b, s;
	output out;
	wire n1, a1, a2;
	and(a1, a, s);
	not(n1, s);
	and(a2, b, n1);
	or(out,a1,a2);
endmodule
