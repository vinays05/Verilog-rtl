module fifo_ptr(input clk,rst,wr_en,rd_en,
output reg fifo_full,fifo_empty);



reg [1:0] wr_ptr,rd_ptr;

assign fifo_full  = (wr_ptr + 1) % 4 == rd_ptr;
assign fifo_empty = (wr_ptr == rd_ptr);


always@(posedge clk) begin 
if(rst) 
wr_ptr<=2'b00;
fifo_empty<=1'b0;
else if(wr_en&&!fifo_full)
wr_ptr<=wr_ptr+1'b1;
end


always@(posedge clk)begin
if(rst)
fifo_full<=1'b0;
read_ptr<=2'b0;
else if(rd_en&&!fifo_empty)
rd_ptr<=rd_ptr+1'b1;


end
endmodule 
