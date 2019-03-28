module program_counter(
    input [7:0] previous_address,
    input clk,
    input reset,
    output [7:0] instruction_address,
);

always @ (reset)
begin
    if (reset == 1)
        instruction_address = 0;
end

always @ (posedge clk or previous_address)
begin
  instruction_address = previous_address + 4;
end

endmodule