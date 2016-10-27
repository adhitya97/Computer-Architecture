module define_circuit(a,b,c,f1,f2);
	output f1,f2;
	input a,b,c;
	wire t1,t2,t3,e1,e2,e3,l;

	and(t2,a,b,c);

	or(t1,a,b,c);

	and(e1,a,b);
	and(e2,a,c);
	and(e3,b,c);
	or(f2,e1,e2,e3);

	not(l,f2);
	and(t3,t1,l);

	or(f1,t2,t3);
endmodule
