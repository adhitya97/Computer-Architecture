// Create the module. Pass the input and output parameters as arguments
module Simple_Circuit(X,Y,S,C);
	output S,C;
	input X,Y;

	xor(S,X,Y);
	and(C,X,Y);
endmodule
