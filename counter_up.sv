// Code your design here
module countr#(parameter N=7)(
 input logic clk,rst,
input logic load,
  input logic [N-1:0] data_in,
  output logic [N-1:0] count); 
  
  always@(posedge clk or posedge rst) begin
    if(rst) 
	count<=0;
    else if (load)
	count <= data_in;
	else 
	count<= count +1'b1;
  end
endmodule
