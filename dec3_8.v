module dec3_8(I,Y);
 input [2:0]I;
 output reg [7:0]Y;
    always@(I)
    begin
	  case(I)
	    3'd0 : Y=8'd1;
		3'd1 : Y=8'd2;
		3'd2 : Y=8'd4;
		3'd3 : Y=8'd8;
		3'd4 : Y=8'd16;
		3'd5 : Y=8'd32;
		3'd6 : Y=8'd64;
		3'd7 : Y=8'd128;
		
		default : Y=0;
	  endcase
    end
endmodule