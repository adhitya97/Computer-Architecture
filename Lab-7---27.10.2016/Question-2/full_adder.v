module full_adder(x,y,z,sf,cf);
	output sf,cf;
	input x,y,z;
	wire x1,a1,a2;

	half_adder ha1(x,y,x1,a1);
	half_adder ha2(x1,z,sf,a2);
	or(cf,a2,a1);
endmodule
