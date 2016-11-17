module circuit_tester;
	wire sf,cf;
	reg [0:2] in;
	full_adder_using_decoder c1(sf,cf,in);
	initial
	begin
				in=3'h0;
		#20		in=3'h1;
		#20		in=3'h2;
		#20		in=3'h3;
		#20		in=3'h4;
		#20		in=3'h5;
		#20		in=3'h6;
		#20		in=3'h7;
		#20		in=3'h0;
	end
	initial
		$monitor ("a= %b | b= %b | c=%b | sum=%b | carry=%b ", in[0],in[1],in[2],sf,cf);
endmodule