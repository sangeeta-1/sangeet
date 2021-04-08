module mux_4to1_st_tb();
    reg [3:0]I;
	reg [1:0]s;
    wire y;
    integer i;
    mux_4to1_st DUT(.y(y),.I(I),.s(s));
    initial
        begin
		I[0]=1'b0;
		I[1]=1'b0;
		I[2]=1'b0;
		I[3]=1'b0;
		s[0]=1'b0;
		s[1]=1'b0;
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
		$monitor ("Input I[0]=%b,I[1]=%b,I[2]=%b, I[3]=%b,s[0]=%b,s[1]=%b, output  y=%b",I[0],I[1],I[2],I[3],s[0],s[1],y);
	initial #100 $finish;
endmodule
		
		