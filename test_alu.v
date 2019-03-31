`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:27:40 03/31/2019
// Design Name:   alu
// Module Name:   V:/Verilog/MIPSProcessor/test_alu.v
// Project Name:  MIPSProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_alu;

	// Inputs
	reg [31:0] input_1;
	reg [31:0] input_2;
	reg [3:0] ctrl;

	// Outputs
	wire zero;
	wire [31:0] result;

	// Instantiate the Unit Under Test (UUT)
	alu uut (
		.input_1(input_1), 
		.input_2(input_2), 
		.ctrl(ctrl), 
		.zero(zero), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		input_1 = 0;
		input_2 = 0;
		ctrl = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		input_1 = 32'b00000000000000000000000000000010;
		input_2 = 32'b00000000000000000000000000000001;
		ctrl = 4'b1000;
		
		#20
		ctrl = 4'b0010;
		
		#30
		ctrl = 4'b0001;

	end
      
endmodule

