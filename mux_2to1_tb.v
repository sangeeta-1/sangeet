module mux_2to1_tb();
    reg [1:0]I;
    reg s;
    wire y;
    integer i;
    mux_2to1 DUT(.y(y),.I(I),.s(s));
    initial
        begin
		I[0]=1'b0;
		I[1]=1'b0;
		s=1'b0;
	end
	initial
	    begin
		for(i=0;i<8;i=i+1)
		    begin
			{I[0],I[1],s}=i;
			#10;
			end
		end
		initial
		$monitor ("Input I[0]=%b,I[1]=%b,s=%b, output  y=%b",I[0],I[1],s,y);
	initial #100 $finish;
endmodule
		
		
	   