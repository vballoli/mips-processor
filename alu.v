module alu(
    input [31:0] input_1,
    input [31:0] input_2,
    input[3:0] ctrl,
    output zero,
    output [31:0] result
);

always @ (input_1 or input_2 or  ctrl)
begin
  case (ctrl)
    4'b0000: result = input_1&input_2; //AND
    4'b0001: result = input_1 | input_2; //OR
    4'0010: result = input_1 + input_2; //ADD
    4'0100: result = input_1 - input_2; //SUB
    //SLL
    //SRL
    default: result = 0;
  endcase

  if (result == 0)
    zero = 1;
  else
    zero = 0;

end

endmodule