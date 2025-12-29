module and_gate(
  input logic a
  input logic b
  output logic y
);
  assign y = a & b // combinational AND
endmodule

    //input : signals coming into a module
    //output : signals coming out of a module
    //assign : used for combinational logic
