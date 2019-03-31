module mips(
    input clk,
    input reset
);

wire [7:0] instruction_address;

wire [5:0] opcode;
wire [4:0] rs;
wire [4:0] rt;
wire [4:0] rd;
wire [4:0] shamt;
wire [5:0] function_code;
wire [15:0] constant;

wire [31:0] data_reg_1;
wire [31:0] data_reg_2;

wire write_data_select;
wire reg_write;
wire alu_op;
wire alu_select;

wire [31:0] write_data;
wire [31:0] alu_input_2;

wire [3:0] ctrl;

wire zero;
wire [31:0] alu_output;

program_counter pc (.previous_address(instruction_address), .clk(clk), .reset(reset),
     .instruction_address(instruction_address));

instruction_fetch i_f (.instruction_address(instruction_address), .clk(clk), .reset(reset),
    .opcode(opcode), .rs(rs), .rt(rt), .rd(rd), .shamt(shamt), .function_code(function_code), .constant(constant));

control_unit cu (.opcode(opcode), .write_data_select(write_data_select), .reg_write(reg_write), .alu_op(alu_op), .alu_select(alu_select));

alu_control ac (.funct(function_code), .alu_op(alu_op), .ctrl(ctrl));

register_file rf (.read_reg_1(rs), .read_reg_2(rt), .write_reg(rd), .reg_write(reg_write), .clk(clk),
     .write_data(write_data), .reset(reset), .data_reg_1(data_reg_1), .data_reg_2(data_reg_2));

mux #(.l1(15), .l2(31)) write_data_mux (.input_1(constant), .input_2(alu_output), .select(write_data_select), .result(write_data));

mux #(.l1(31), .l2(4)) alu_input_mux (.input_1(data_reg_2), .input_2(shamt), .select(alu_select), .result(alu_input_2));

alu a (.input_1(data_reg_1), .input_2(alu_input_2), .ctrl(ctrl), .zero(zero), .result(alu_output));

endmodule