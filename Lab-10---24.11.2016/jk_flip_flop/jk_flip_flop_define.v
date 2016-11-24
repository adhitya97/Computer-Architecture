// Positive edge trigerred reset
module jk_flip_flop(j,k,clk,rst,q);
	input j,k,clk,rst;
	output q;
	reg q;

	always @ (posedge clk)
	begin
		if(j==1 & k==1 & rst==0)
		begin
			q<=~q; 	//Toggle
		end
		else if(j==1 & k==0 & rst==0)
		begin
			q<=1;	//Set
		end
		else if(j==0 & k==1 & rst==0)
		begin
			q<=0;	//Clear
		end
		else if(j==0 & k==0 & rst==0)
		begin
			q<=q;	//No change
		end
	end
	always @ (posedge rst)
	begin
		q<=0;
	end
endmodule