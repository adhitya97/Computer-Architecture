// Create the module. Pass the input and output parameters as arguments
module Simple_Circuit(A,B,C,D,E);
	output D,E;
	input A,B,C;
	wire w1;

	and (w1,A,B);
	not(E,C);
	or(D,w1,E);
	
endmodule
