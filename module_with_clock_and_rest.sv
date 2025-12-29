module dff(
  input logic clk,
  input logic rst,
  input logic x,
  output logic y
)
  always_ff @(posedge clk or posedge rst) begin
    if(rst)
      q <= 0
    else
      q <= d
    end
endmodule
