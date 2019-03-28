module alu_control(
    input [5:0] funct,
    input alu_op,
    output [3:0] ctrl
);

always @ (alu_op)
begin
    if (alu_op == 1)
    begin
       case (funct)
         6'b100000: ctrl = 4'b0010;
         6'b100010: ctrl = 4'b0100;
         6'b100100: ctrl = 4'b0000;
         6'b100101: ctrl = 4'b0001;
         6'b000000: ctrl = 4'b1000;
         6'b000010: ctrl = 4'b1001;
         default: ctrl = 4'b0000;
       endcase

    end
end

endmodule