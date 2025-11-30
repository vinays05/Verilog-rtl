module pos_edge_trig(
input logic clk,
input logic rstn,
input logic  sig,
output logic pe,
);

  reg sig_d; 
always@(posedge clk or negedge rstn) begin  
    if(!rstn) begin
  		sig<=1'd0; 
		pe<=1'd0;
    end
else begin 
pe <= (~sig_d) & sig;
sig_d <= sig;
end 
end
endmodule

 
// for  negedge trigger 

//ne<= sig_d & (~sig) ;

