module and_gate(
  input logic a
  input logic b
  output logic y
);
 - assign y = a & b; // combinational AND
 |   //NOTE : after each line, a semicolon(;) must be placed or else there will be a syntax error
s |   //input : signals coming into a module
 |   //output : signals coming out of a module
a |   //assign : used for combinational logic
 |   //logic a : a wire carrying either a 0 or a 1
m |   //inputs and outputs and physically wires connecting 2 or more modules
 |
e |   //Types of Logics :
 |   //Combinational Logic:
 -   always_comb begin
      y = a & b;
    end
  //NOTE : do NOT use use assign logic AND combinational logic to denote the same variable like shown in the code as it will lead to computational error
