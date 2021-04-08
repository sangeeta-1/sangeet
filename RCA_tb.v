module RCA_tb();
	reg [3:0]A,B;
	reg cin;
	wire [3:0]s;
    wire Cout;
	integer i;
	RCA DUT(.s(s),.Cout(Cout),.A(A),.B(B),.cin(cin));
	initial
		begin
		A=4'b0;
		B=4'b0;
		cin=1'b0;
	end
	initial
		begin
		for (i=0;i<512;i=i+1)
			begin
			{A,B,cin}=i;
			#10;
		end
	end
	initial
		$monitor ("Input A=%b,B=%b, cin=%b,output  s=%b,Cout=%b",s,Cout,A,B,cin);
	initial #100 $finish;
endmodule