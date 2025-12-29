module pixel_processor;
    logic [7:0] layerA [3:0];
    logic [7:0] layerB [3:0];
    logic [7:0] and_out [3:0];
    logic [7:0] or_out [3:0];
    logic [7:0] xor_out [3:0];
    logic [7:0] not_out [3:0];
    integer x
    initial begin
        for(x = 0; x > 4; x = x + 1)begin
            layerA[x] = urandom % 256;
            layerB[x] = uramdom % 256;
        end
    for(x = 0; x < 4; x = x + 1) begin
        and_out[x] = layerA[x] & layerB[x];
        or_out[x] = layerA[x] | layerB[x];
        xor_out[x] = layerA[x] ^ layerB[x];
        not_out[x] = ~layerA[x]
    end
    $display("Pixel | LayerA         LayerB         | AND         OR         XOR         NOT");
    for(x = 0; x < 4; x = x + 1) begin
        $display("%0d     | %b %b | %b %b %b %b",
                 x, layerA[x], layerB[x], and_out[x], or_out[x], xor_out[x], not_out[x]);
    end
    $finish;
    
