module d_flip_flop_tester;
	reg d,clk;
	wire q;
	d_flip_flop dff(q,d,clk);
	initial
		begin
			d=1'b0; clk=1'b1;
			#20
			d=1'b0; clk=~clk;
			#20
			d=1'b1; clk=~clk;
			#20
			d=1'b0; clk=~clk;
			#20
			d=1'b1; clk=~clk;
			#20
			d=1'b1; clk=~clk;
		end		
endmodule