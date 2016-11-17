// Data Flow model of Full Adder using 3:8 Decoder

module full_adder_using_decoder(sum,carry,in);
	input [0:2] in;
	output sum,carry;
	wire [0:7] temp;

	decoder dec(temp[0],temp[1],temp[2],temp[3],temp[4],temp[5],temp[6],temp[7],in[0],in[1],in[2]);
	assign sum = temp[1]  | temp[2]  | temp[4]  | temp[7], carry = temp[3]  | temp[5]  | temp[6]  | temp[7];

endmodule