module shift_reg(input clk,rst,
input[3:0]D,input[1:0]mode ,
output logic[3:0]Q);


always_ff@(posedge clk)  begin 

if(rst) 
Q<=4'b0000;
else
begin

case(mode)
2'b00:Q<= Q ;//hold
2'b01:Q<= {Q[2:0],1'b0} ; // shift left
2'b10:Q<=  {1'b0,Q[3:1]};//shift right 
2'b11:Q<= D ;//parallel load
default:Q<=4'b0000;
endcase
end
end
endmodule
