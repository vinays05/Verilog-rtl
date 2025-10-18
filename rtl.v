module RAM #(
  parameter WIDTH = 8,
  parameter ADDR_WIDTH = 10
)(
  input  wire rst, clk, we,
  input  wire [WIDTH-1:0] din,
  input  wire [ADDR_WIDTH-1:0] addr,
  output reg  [WIDTH-1:0] dout
);

  // Memory declaration
  reg [WIDTH-1:0] mem [0:(2**ADDR_WIDTH)-1];

  always @(posedge clk or posedge rst) begin
    if (rst)
      dout <= 0;              // reset output
    else if (we)
      mem[addr] <= din;       // write operation
    else
      dout <= mem[addr];      // read operation
  end

endmodule
