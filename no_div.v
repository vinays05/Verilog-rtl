module no_div(input[2:0] divisor,dividend,
output reg[2:0] count,sum);

always@(*) begin


//sum=0;


  while(sum+divisor<=dividend)
	begin
   count=count+1'b1;
   sum=sum+divisor;
    end
	
end
endmodule
