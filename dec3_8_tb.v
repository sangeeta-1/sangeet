module dec3_8_tb();
  reg [3:0]I;
  wire [7:0]Y;
dec3_8 DUT(I,Y);
task initialize;
    begin
        {I}=0;
	end
    endtask
task stimulus(input[3:0]i);
    begin
      #10;
      I=i;
	end
endtask
initial
    begin
     initialize;
	 stimulus(4'd5);
	 stimulus(4'd7);
	 stimulus(4'd6);
	end
initial
    begin
		$monitor ("Values of I=%b, output  Y=%b",I,Y);
	end
initial
    begin
	#100 $finish;
	end
endmodule