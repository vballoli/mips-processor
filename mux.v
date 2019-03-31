module mux #(parameter l1=31, parameter l2=31)(
    input [l1:0] input_1,
    input [l2:0] input_2,
    input select,
    output reg [31:0] result
);

always @ (*)
begin
  case (select)
    1'b0: result = $signed(input_1);
    1'b1: result = $signed(input_2);  
    default: result = 0;
  endcase
end


endmodule