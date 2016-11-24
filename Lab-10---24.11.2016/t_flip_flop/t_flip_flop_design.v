// Negative edge trigerred reset
module t_flip_flop(q,t,clk,rst);
	input t,clk,rst;
	output q;
	reg q;
	always@(posedge clk or negedge rst)
	begin
		if(~rst)
			begin
				q<=1'b0;
			end
		else if(t)
			begin
				q<=!q;
			end
	end
endmodule