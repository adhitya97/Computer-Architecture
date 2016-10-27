module circuit_tester;
	wire f1,f2;
	reg a,b,c;
	define_circuit c1(a,b,c,f1,f2);
	initial
	begin
		a=0;b=0;c=0;
		#20
		a=0;b=0;c=1;
		#20	
		a=0;b=1;c=0;
		#20
		a=0;b=1;c=1;
		#20
		a=1;b=0;c=0;
		#20
		a=1;b=0;c=1;
		#20
		a=1;b=1;c=0;
		#20
		a=1;b=1;c=1;
		#20
		a=0;b=0;c=0;		
	end
endmodule
