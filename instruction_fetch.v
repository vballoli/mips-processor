module instruction_fetch(
    input [7:0] instruction_address,
    input clk,
	 input reset,
    output reg [5:0] opcode,
    output reg [4:0] rs,
    output reg [4:0] rt,
    output reg [4:0] rd,
    output reg [4:0] shamt,
    output reg [5:0] function_code,
    output reg [15:0] constant
);

reg [0:31] InstructionMemory [0:255];
reg [0:31] instruction;

integer i;

always @ (reset)
begin
    if (reset==1)
    begin
    for(i=0;i<255;i=i+1)
        InstructionMemory[i] = 32'b00000000001000010000100000100000;
    end
end

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