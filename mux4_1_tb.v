module mux4_1_tb();
  reg [3:0]D;
  reg [1:0]S;
wire Y;
mux4_1 DUT(D,S,Y);
task initialize;
    begin
        {D,S}=0;
	end
    endtask
task stimulus(input[3:0]i, input[1:0]j);
    begin
      #10;
      D=i;
      S=j;
	end
endtask
initial
    begin
     initialize;
	 stimulus(4'd5,2'd2);
	 stimulus(4'd15,2'd3);
	 stimulus(4'd6,2'd1);
	end
initial
    begin
		$monitor ("Values of D=%b,S=%b, output  Y=%b",D,S,Y);
	end
initial
    begin
	#100 $finish;
	end
endmodule