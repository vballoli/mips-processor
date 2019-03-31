`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:28:00 03/31/2019
// Design Name:   control_unit
// Module Name:   V:/Verilog/MIPSProcessor/test_control_unit.v
// Project Name:  MIPSProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: control_unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_control_unit;

	// Inputs
	reg [5:0] opcode;

	// Outputs
	wire write_data_select;
	wire reg_write;
	wire alu_op;
	wire alu_select;

	// Instantiate the Unit Under Test (UUT)
	control_unit uut (
		.opcode(opcode), 
		.write_data_select(write_data_select), 
		.reg_write(reg_write), 
		.alu_op(alu_op), 
		.alu_select(alu_select)
	);

	initial begin
		// Initialize Inputs
		opcode = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		opcode = 6'b111111;

	end
      
endmodule

