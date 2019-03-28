module instruction_fetch(
    input [7:0] instruction_address,
    input clk,
    output [5:0] opcode,
    output [4:0] rs,
    output [4:0] rt,
    output [4:0] rd,
    output [4:0] shamt,
    output [5:0] function_code,
    output [15:0] constant
);

reg [7:0] [31:0] InstructionMemory;
reg [31:0] instruction;

always @ (instruction_address)
begin
    instruction = InstructionMemory[instruction_address];
    opcode = instruction[0:5];
    rd = instruction[6:10];

    rs = instruction[11:15];
    rt = instruction[16:20];
    shamt = instruction[21:25];
    function_code = instruction[26:31];
    
    constant = instruction[15:31];

end

endmodule