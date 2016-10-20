module t_SimpleCircuit;
	wire S,C;
	reg x,y;
	Simple_Circuit S1(x,y,S,C);
	initial
	begin
		x=0;y=0;
		#20
		x=0;y=1;
		#20	
		x=1;y=0;
		#20
		x=1;y=1;
		#20
		x=0;y=0;
	end
endmodule
