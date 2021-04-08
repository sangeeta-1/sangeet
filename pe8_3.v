module pe8_3(I,Y);
 input[7:0] I;
 output reg[2:0] Y;
    always@(I)
    begin
	  case(I)
                8'b00000001 : Y=3'd0;
		8'b0000001X : Y=3'd1;
		8'b000001XX : Y=3'd2;
		8'b00001XXX : Y=3'd3;
		8'b0001XXXX : Y=3'd4;
		8'b001XXXXX : Y=3'd5;
		8'b01XXXXXX : Y=3'd6;
		8'b1XXXXXXX : Y=3'd7;
		default : Y=0;
	  endcase
    end
endmodule