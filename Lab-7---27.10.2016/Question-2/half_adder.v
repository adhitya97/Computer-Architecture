module half_adder(x,y,sh,ch);
	output sh,ch;
	input x,y;

	xor(sh,x,y);
	and(ch,x,y);
endmodule
