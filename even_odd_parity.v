// Code your design here
module e_o_p(input [7:0] addr,output reg[7:0] parity);
  reg[2:0] count;
  integer i;
  always@(*)
	begin 
  count=3'b0;

      for(i=0;i<=7;i=i+1)
        begin
          if(addr[i]==1)
		count=count+1'b1;
        end
            if(count % 2 == 0)
		  parity=1'b0;
			else
              parity=1'b1;
        end
      endmodule
            
