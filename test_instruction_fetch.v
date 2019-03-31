`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:29:00 03/31/2019
// Design Name:   instruction_fetch
// Module Name:   V:/Verilog/MIPSProcessor/test_instruction_fetch.v
// Project Name:  MIPSProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: instruction_fetch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_instruction_fetch;

	// Inputs
	reg [7:0] instruction_address;
	reg clk;
	reg reset;

	// Outputs
	wire [5:0] opcode;
	wire [4:0] rs;
	wire [4:0] rt;
	wire [4:0] rd;
	wire [4:0] shamt;
	wire [5:0] function_code;
	wire [15:0] constant;

	// Instantiate the Unit Under Test (UUT)
	instruction_fetch uut (
		.instruction_address(instruction_address), 
		.clk(clk), 
		.reset(reset),
		.opcode(opcode), 
		.rs(rs), 
		.rt(rt), 
		.rd(rd), 
		.shamt(shamt), 
		.function_code(function_code), 
		.constant(constant)
	);

	initial begin
		// Initialize Inputs
		instruction_address = 0;
		reset = 1;

		#5
		
		reset = 0;
		instruction_address = 8'b00000001;
        
		// Add stimulus here

	end
	
	initial begin
	
		clk = 0;
		repeat(20)
		#5
		clk = ~clk;
		$finish;
	
	end
      
endmodule

