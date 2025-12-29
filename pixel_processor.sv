module pixel_processor;
    logic [7:0] layerA0, layerA1, layerA2, layerA3;
    logic [7:0] layerB0, layerB1, layerB2, layerB3;
    logic [7:0] and0, and1, and2, and3;
    logic [7:0] or0, or1, or2, or3;
    logic [7:0] xor0, xor1, xor2, xor3;
    logic [7:0] not0, not1, not2, not3;

    initial begin
        // Initialize pixels
        layerA0 = 8'b01101001; layerB0 = 8'b01001011;
        layerA1 = 8'b10001101; layerB1 = 8'b01110011;
        layerA2 = 8'b00110011; layerB2 = 8'b10101010;
        layerA3 = 8'b00010001; layerB3 = 8'b11101110;

        // Bitwise operations
        and0 = layerA0 & layerB0; or0 = layerA0 | layerB0; xor0 = layerA0 ^ layerB0; not0 = ~layerA0;
        and1 = layerA1 & layerB1; or1 = layerA1 | layerB1; xor1 = layerA1 ^ layerB1; not1 = ~layerA1;
        and2 = layerA2 & layerB2; or2 = layerA2 | layerB2; xor2 = layerA2 ^ layerB2; not2 = ~layerA2;
        and3 = layerA3 & layerB3; or3 = layerA3 | layerB3; xor3 = layerA3 ^ layerB3; not3 = ~layerA3;

        // Display results
        $display("Pixel | LayerA LayerB | AND OR XOR NOT");
        $display("0     | %b %b | %b %b %b %b", layerA0, layerB0, and0, or0, xor0, not0);
        $display("1     | %b %b | %b %b %b %b", layerA1, layerB1, and1, or1, xor1, not1);
        $display("2     | %b %b | %b %b %b %b", layerA2, layerB2, and2, or2, xor2, not2);
        $display("3     | %b %b | %b %b %b %b", layerA3, layerB3, and3, or3, xor3, not3);

        $finish;
    end
endmodule
