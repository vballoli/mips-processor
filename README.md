# MIPS Design Verilog

Implementation of MIPS processor datapath to support R-type and I-type instructions as a part of assignment of CS F342 Computer Architecture in Verilog.


# Run Instructions

## Icarus-verilog

1. Install `icarus-verilog` by `brew install scons mingw-64 icarus-verilog` on MacOS or `apt-get install icarus-verilog` on Linux.

2. Run a file: `iverilog {filename}`

## Xilinx ISE

1. Install ISE Design Suite from the official Xilinx website

2. Add files to the project from this repositoty by adding them as source files

2. Initialize Register Memory (RemMemory in register_file.v) and Instruction Memory (InstructionMemory in instruction_fetch.v) based on the instructions to be implemented on the MIPS processor (R ad I type instructions only)

3. Run the test bench file test_mips.v