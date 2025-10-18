// Code your testbench here
// or browse Examples
module ram_tb();
parameter WIDTH=8;
parameter  ADDR_WIDTH=10;
reg clk,rst,we;
reg[WIDTH-1:0]din;
reg[ADDR_WIDTH-1:0]addr;
wire[WIDTH-1:0]dout;

RAM #(WIDTH,ADDR_WIDTH) uut(rst,clk,we,din,addr,dout);

always 
#5 clk=~clk;

task initialize();
{rst,clk,we,din,addr}=0;
endtask

task reset();
begin
@(negedge clk)
   rst<=1'b1;
@(negedge clk)
	rst<=1'b0;
end
endtask	

task stimuli(input[WIDTH-1:0] data,input[ADDR_WIDTH-1:0] address);
begin
@(negedge clk)
we=1;
din=data;
addr=address;
@(negedge clk)
we=0;
end
endtask

initial
	begin
	initialize();
	reset();
	stimuli(8'hAA,10'd2);
	#10;
		stimuli(8'hBB,10'd4);
	#10;
		stimuli(8'hCC,10'd7);

	end
initial begin
  $monitor("Time=%0t | Read Addr=%0d | Data=%h",$time, addr, dout);
#100; $finish;
end
endmodule 


	
	
	
	
	
	

	
