module pixel_processor;
  logic [7:0] layerA [3:0];
  logic [7:0] layerB [3:0];
  logic [7:0] and_out [3:0];
  logic [7:0] or_out [3:0];
  logic [7:0] xor_out [3:0];
  logic [7:0] not_out [3:0];
  integer i;
  initial begin
    layerA[0] = 8'b01101001; layerB[0] = 8'b01001011;
    layerA[1] = 8'b10001101; layerB[1] = 8'b01110011;
    layerA[2] = 8'b00110011; layerB[2] = 8'b10101010;
    layerA[3] = 8'b00010001; layerB[3] = 8'b11101110;
    for(i = 0; i < 4; i = i + 1) begin
      and_out[i] = layerA[i] & layerB[i];
      or_out[i] = layerA[i] | layerB[i];
      xor_out[i] = layerA[i] ^ layerB[i];
      not_out[i] = ~layerA[i];
    end
    $display ("Pixel | LayerA LayerB | AND OR XOR NOT");
    for(i = 0; i < 4; i = i + 1) begin
      $display ("%0d         | %b         %b         | %b         %b         %b         %b"
                i, layerA[i], layerB[i], and_out[i], or_out[i], xor_out[i], not_out[i]);
    end
    $finish;
  end
endmodule
