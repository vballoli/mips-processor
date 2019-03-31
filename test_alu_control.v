`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:10:40 03/31/2019
// Design Name:   alu_control
// Module Name:   V:/Verilog/MIPSProcessor/test_alu_control.v
// Project Name:  MIPSProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_alu_control;

	// Inputs
	reg [5:0] funct;
	reg alu_op;

	// Outputs
	wire [3:0] ctrl;

	// Instantiate the Unit Under Test (UUT)
	alu_control uut (
		.funct(funct), 
		.alu_op(alu_op), 
		.ctrl(ctrl)
	);

	initial begin
		// Initialize Inputs
		funct = 0;
		alu_op = 1;

		// Wait 100 ns for global reset to finish
		#10;
		
		funct = 6'b100000;
        
		// Add stimulus here

	end
      
endmodule

