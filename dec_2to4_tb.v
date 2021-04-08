module dec_2to4_tb();
    reg [1:0]s;
    wire [3:0]I;
    integer i;
    dec_2to4 DUT(.s(s),.I(I));
    initial
        begin
		s[0]=1'b0;
		s[1]=1'b0;
	end
	initial
	    begin
		for(i=0;i<4;i=i+1)
		    begin
			{s[0],s[1]}=i;
			#10;
			end
		end
		initial
		$monitor ("Input s0=%b,s1=%b, output  I0=%b,I1=%b,I2=%b,I3=%b",s[0],s[1],I[0],I[1],I[2],I[3]);
	initial #100 $finish;
endmodule
		