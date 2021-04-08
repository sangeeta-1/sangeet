module pe8_3_tb();
  reg  [7:0]I;
  wire [3:0]Y;
pe8_3 DUT(I,Y);
task initialize;
    begin
        {I}=0;
	end
    endtask
task stimulus(input[7:0]i);
    begin
      #10;
      I=i;
	end
endtask
initial
    begin
     initialize;
	 stimulus(8'b00000001);
	 stimulus(8'b000001XX);
	 stimulus(8'b00001XXX);
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