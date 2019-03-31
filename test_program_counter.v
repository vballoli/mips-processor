`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:28:22 03/31/2019
// Design Name:   program_counter
// Module Name:   V:/Verilog/MIPSProcessor/test_program_counter.v
// Project Name:  MIPSProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: program_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_program_counter;

	// Inputs
	reg [7:0] previous_address;
	reg clk;
	reg reset;

	// Outputs
	wire [7:0] instruction_address;

	// Instantiate the Unit Under Test (UUT)
	program_counter uut (
		.previous_address(previous_address), 
		.clk(clk), 
		.reset(reset), 
		.instruction_address(instruction_address)
	);

	initial begin
		// Initialize Inputs
		previous_address = 0;
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

