// 4-Bit Binary Adder using Data Flow Design

module binary_adder(sum,carry_out,a,b,carry_in);
	output [3:0]sum;
	output carry_out;
	input [3:0]a,b;
	input carry_in;
	assign {carry_out,sum}= a+b+carry_in;
endmodule
