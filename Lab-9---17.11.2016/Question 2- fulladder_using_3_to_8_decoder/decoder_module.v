// Gate level design of 3:8 Decoder module
module decoder(d0,d1,d2,d3,d4,d5,d6,d7,x,y,z);
	input x,y,z;
	output d0,d1,d2,d3,d4,d5,d6,d7;
	wire w0,w1,w2;

	not (w2,z);
	not (w1,y);
	not (w0,x);

	and(d0,w0,w1,w2);
	and(d1,w0,w1,z);
	and(d2,w0,y,w2);
	and(d3,w0,y,z);
	and(d4,x,w1,w2);
	and(d5,x,w1,z);
	and(d6,x,y,w2);
	and(d7,x,y,z);
endmodule