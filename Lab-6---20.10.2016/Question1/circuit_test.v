module t_SimpleCircuit;
	wire D,E;
	reg x,y,z;
	Simple_Circuit S1(x,y,z,D,E);
	initial
	begin
		x=0;y=0;z=0;
		#20
		x=0;y=0;z=1;
		#20	
		x=0;y=1;z=0;
		#20
		x=1;y=0;z=0;
		#20
		x=0;y=1;z=1;
		#20
		x=1;y=1;z=0;
		#20
		x=1;y=0;z=1;
		#20
		x=1;y=1;z=1;
	end
endmodule
