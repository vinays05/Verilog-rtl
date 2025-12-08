module s_ALU(input logic [3:0]A,B,
		input logic [1:0]op,
	     output logic[3:0] y );


always_comb begin
case(op)

2'b00:y=A + B  ;
2'b01:y=A - B  ;
2'b10:y=A & B  ;
2'b11:y=A ^ B  ;
default:y=4'b0000;
endcase
end
endmodule    
