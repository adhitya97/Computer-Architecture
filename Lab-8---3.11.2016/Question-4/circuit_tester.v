module circuit_tester;
	wire [0:3]d;
	reg a,b,e;
	decoder_2X4_dataflow c1(a,b,e,d);
	initial
	begin
		a=0;b=0;e=0;
		#20
		a=0;b=0;e=1;
		#20	
		a=0;b=1;e=0;
		#20
		a=0;b=1;e=1;
		#20
		a=1;b=0;e=0;
		#20
		a=1;b=0;e=1;
		#20
		a=1;b=1;e=0;
		#20
		a=1;b=1;e=1;
		#20
		a=0;b=0;e=0;		
	end
	initial
		$monitor("A=%b B=%b E=%b d[0]=%b d[1]=%b d[2]=%b d[3]=%b time=%0d", a, b, e, d[0], d[1], d[2], d[3], $time);
endmodule
