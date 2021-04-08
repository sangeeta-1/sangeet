module mux4_1(D,S,Y);
 input[3:0] D;
 input[1:0] S;
 output reg Y;
    always@(D,S)
    begin
	  case(S)
	        2'd0 : Y=D[0];
		2'd1 : Y=D[1];
		2'd2 : Y=D[2];
		2'd3 : Y=D[3];
		default : Y=0;
	  endcase
    end
endmodule