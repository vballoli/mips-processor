module control_unit(
    input [5:0] opcode,
    output reg write_data_select,
    output reg reg_write,
    output reg alu_op,
    output reg alu_select
);
	
	always @ (opcode)
	begin
    case (opcode)
      6'b000000:
      begin
       alu_op = 1;
       write_data_select = 1;
       reg_write = 1;
		 alu_select = 0;
      end
      6'b111111:
      begin
        alu_op = 0;
        write_data_select = 0;
        reg_write = 1;
		  alu_select = 1;
      end
      default: 
      begin
        alu_op = 0;
        write_data_select = 0;
        reg_write = 1;
      end
    endcase
	end
	
endmodule