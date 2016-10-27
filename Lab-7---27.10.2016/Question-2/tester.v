module circuit_tester;
	wire sf,cf;
	reg a,b,c;
	full_adder c1(a,b,c,sf,cf);
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
