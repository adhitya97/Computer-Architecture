module circuit_tester;
	wire o;
	reg a,b,s;
	circuit c1(o,a,b,s);
	initial
	begin
		a=0;b=0;s=0;
		#20
		a=0;b=0;s=1;
		#20	
		a=0;b=1;s=0;
		#20
		a=0;b=1;s=1;
		#20
		a=1;b=0;s=0;
		#20
		a=1;b=0;s=1;
		#20
		a=1;b=1;s=0;
		#20
		a=1;b=1;s=1;
		#20
		a=0;b=0;s=0;		
	end
	initial
		$monitor("A=%b B=%b S=%b out=%b time=%0d", a, b, s, o, $time);
endmodule
