module t_flip_flop_tester;
	reg t,clk,rst;
	wire q;
	t_flip_flop tff(q,t,clk,rst);
	initial
		begin
			t=1'b0; clk=1'b1; rst = 0;
			#20
			t=1'b0; clk=~clk; rst = 1;
			#20
			t=1'b1; clk=~clk; rst = 1;
			#20
			t=1'b0; clk=~clk; rst = 1;
			#20 
			t=1'b1; clk=~clk; rst = 0;
			#20
			t=1'b1; clk=~clk; rst = 1;
		end		
endmodule