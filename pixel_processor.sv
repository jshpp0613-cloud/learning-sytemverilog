module pixel_processor;

    // Layer A pixels
    logic [7:0] A0 = 8'b01101001;
    logic [7:0] A1 = 8'b10001101;
    logic [7:0] A2 = 8'b00110011;
    logic [7:0] A3 = 8'b00010001;

    // Layer B pixels
    logic [7:0] B0 = 8'b01001011;
    logic [7:0] B1 = 8'b01110011;
    logic [7:0] B2 = 8'b10101010;
    logic [7:0] B3 = 8'b11101110;

    // Outputs
    logic [7:0] AND0, AND1, AND2, AND3;
    logic [7:0] OR0, OR1, OR2, OR3;
    logic [7:0] XOR0, XOR1, XOR2, XOR3;
    logic [7:0] NOT0, NOT1, NOT2, NOT3;

    initial begin
        // Bitwise operations
        AND0 = A0 & B0; OR0 = A0 | B0; XOR0 = A0 ^ B0; NOT0 = ~A0;
        AND1 = A1 & B1; OR1 = A1 | B1; XOR1 = A1 ^ B1; NOT1 = ~A1;
        AND2 = A2 & B2; OR2 = A2 | B2; XOR2 = A2 ^ B2; NOT2 = ~A2;
        AND3 = A3 & B3; OR3 = A3 | B3; XOR3 = A3 ^ B3; NOT3 = ~A3;

        // Display results
        $display("Pixel | LayerA LayerB | AND OR XOR NOT");
        $display("0     | %b %b | %b %b %b %b", A0, B0, AND0, OR0, XOR0, NOT0);
        $display("1     | %b %b | %b %b %b %b", A1, B1, AND1, OR1, XOR1, NOT1);
        $display("2     | %b %b | %b %b %b %b", A2, B2, AND2, OR2, XOR2, NOT2);
        $display("3     | %b %b | %b %b %b %b", A3, B3, AND3, OR3, XOR3, NOT3);

        $finish;
    end

endmodule
