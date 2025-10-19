// Code your testbench here
// or browse Examples
module e_o_p_tb();
  reg[7:0]addr;
  wire[7:0]parity;

  e_o_p dut(addr,parity);
initial begin
//addr=8'b0;
  #5;
  addr=8'b11111111;
  #10;
  addr=8'b10100111;
end
  initial
    $monitor("time=%0t| parity=%0b",$time,parity);
endmodule

  
