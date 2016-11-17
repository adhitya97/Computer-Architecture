module mux_4_to_1 (out, in, sel);
	input [0:3] in;
	input [0:1] sel;
	output out;
	wire a,b,c,d,n1,n2,a1,a2,a3,a4;
	not (n1,sel[1]);
	not (n2,sel[0]);
	and (a1,in[0],n1,n2);
	and (a2,in[1],n2,sel[1]);
	and (a3,in[2],sel[0],n1);
	and (a4,in[3],sel[0],sel[1]);
	or (out,a1,a2,a3,a4);
endmodule