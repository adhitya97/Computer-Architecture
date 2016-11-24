module d_flip_flop_tester;
	reg d,clk,rst;
	wire q;
	d_flip_flop dff(q,d,clk,rst);
	initial
		begin
			d=1'b0; clk=1'b1; rst = 0;
			#20
			d=1'b0; clk=~clk; rst = 1;
			#20
			d=1'b1; clk=~clk; rst = 1;
			#20
			d=1'b0; clk=~clk; rst = 1;
			#20 
			d=1'b1; clk=~clk; rst = 0;
			#20
			d=1'b1; clk=~clk; rst = 1;
		end		
endmodule