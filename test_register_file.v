`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:28:41 03/31/2019
// Design Name:   register_file
// Module Name:   V:/Verilog/MIPSProcessor/test_register_file.v
// Project Name:  MIPSProcessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register_file
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_register_file;

	// Inputs
	reg [4:0] read_reg_1;
	reg [4:0] read_reg_2;
	reg [4:0] write_reg;
	reg reg_write;
	reg clk;
	reg [31:0] write_data;
	reg reset;

	// Outputs
	wire [31:0] data_reg_1;
	wire [31:0] data_reg_2;

	// Instantiate the Unit Under Test (UUT)
	register_file uut (
		.read_reg_1(read_reg_1), 
		.read_reg_2(read_reg_2), 
		.write_reg(write_reg), 
		.reg_write(reg_write), 
		.clk(clk), 
		.write_data(write_data), 
		.reset(reset), 
		.data_reg_1(data_reg_1), 
		.data_reg_2(data_reg_2)
	);

	initial begin
		// Initialize Inputs
		read_reg_1 = 0;
		read_reg_2 = 0;
		write_reg = 0;
		reg_write = 0;
		write_data = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#5;
		
		read_reg_1 = 5'b00001;
		read_reg_2 = 5'b00010;
        
		// Add stimulus here

	end
	
	initial begin
	
		clk = 0;
		repeat(100)
		#5
		clk = ~clk;
		$finish;
	
	end
      
endmodule

