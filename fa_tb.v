module fa_tb();
	reg a_in,b_in,c_in;
	wire sum,Cout;
	integer i;
	fa_st DUT(.sum(sum),.Cout(Cout),.a(a_in),.b(b_in),.c(c_in));
	initial
		begin
		a_in=1'b0;
		b_in=1'b0;
		c_in=1'b0;
	end
	initial
		begin
		for (i=0;i<8;i=i+1)
			begin
			{a_in,b_in,c_in}=i;
			#10;
		end
	end
	initial
		$monitor ("Input a_in=%b,b_in=%b, c_in=%b,output  sum=%b,Cout=%b",a_in,b_in,c_in,sum,Cout);
	initial #100 $finish;
endmodule