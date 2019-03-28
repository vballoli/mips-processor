module mux(
    input reg [31:0] input_1,
    input reg [31:0] input_2,
    input select,
    output [31:0] output
);

always @ (select)
begin
  case (select)
    1'b0: output = input_1;
    1'b1: output = input_2;  
    default: output = 0;
  endcase
end


endmodule;