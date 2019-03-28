module control_unit(
    input [5:0] opcode,
    output write_data_select,
    output reg_write,
    output alu_op,
    output alu_select,
);

    case (opcode)
      6'b000000:
      begin
       alu_op = 1;
       write_data_select = 1;
       reg_write = 1;
      end
      6'b111111:
      begin
        alu_op = 0;
        write_data_select = 0;
        reg_write = 1;
      end
      default: 
      begin
        alu_op = 0;
        write_data_select = 0;
        reg_write = 1;
      end
    endcase

endmodule