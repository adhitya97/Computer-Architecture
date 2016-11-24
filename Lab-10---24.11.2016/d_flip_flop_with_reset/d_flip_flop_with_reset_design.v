// Negative edge trigerred reset
module d_flip_flop(q,d,clk,rst);
	output q;
	input d,clk,rst;
	reg q;
	always @(posedge clk or negedge rst)
	if(~rst)
		q<=1'b0;
	else
		q=d;
endmodule