module mux_4to1_dec_tribuff_tb();
    reg [1:0]s;
    reg [3:0]I;
	wire y;
    integer i;
    mux_4to1_dec_tribuff_st DUT(.s(s),.I(I),.y(y));
    initial
        begin
		s[0]=1'b0;
		s[1]=1'b0;
		I[0]=1'b0;
		I[1]=1'b0;
		I[2]=1'b0;
		I[3]=1'b0;
		I[4]=1'b0;
	end
	initial
	    begin
		for(i=0;i<64;i=i+1)
		    begin
			{I[0],I[1],I[2],I[3],s[0],s[1]}=i;
			#10;
			end
		end
		initial
		$monitor ("Input s0=%b,s1=%b,I0=%b,I1=%b,I2=%b,I3=%b output  y=%b",s[0],s[1],I[0],I[1],I[2],I[3],y);
	initial #100 $finish;
endmodule
		