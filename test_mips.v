`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:26:33 03/31/2019
// Design Name:   mips
// Module Name:   V:/Verilog/MIPSProcessor/test_mips.v
// Project Name:  MIPSProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_mips;

	// Inputs
	reg clk;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		reset = 1;
		
		#10
		
		reset = 0;
        
		// Add stimulus here

	end
	
	initial begin
	
		clk = 0;
		repeat(200)
		#10
		clk = ~clk;
		$finish;
	
	end
      
endmodule

