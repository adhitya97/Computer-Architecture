module jk_flip_flop_tester;
	reg j,k,clk,rst;
	wire q;
	jk_flip_flop jkff(j,k,clk,rst,q);
	initial
		begin
			clk=0;
			repeat(30)
			#10
			clk=~clk;
		end

	initial
		begin
			j=0; k=0;rst=1;
			#10
			j=0; k=1;rst=0;
			#10
			j=1; k=0;rst=1;
			#10
			j=1; k=1;rst=0;
			#10
			j=0; k=0;
			#10
			j=1; k=0;
			#10
			j=0; k=1; rst=1;
		end
endmodule