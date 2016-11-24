module d_flip_flop(q,d,clk);
	output q;
	input d,clk;
	reg q;
	always @(posedge clk)
		q<=d;
endmodule