module register_file(
    input [4:0] read_reg_1,
    input [4:0] read_reg_2,
    input [4:0] write_reg,
    input reg_write,
    input clk,
    input [31:0] write_data,
    input reset, 
    output reg [31:0] data_reg_1,
    output reg [31:0] data_reg_2
);

reg [31:0] RegMemory [255:0];
integer i;

always @ (reset)
begin
    if (reset==1)
    begin
    for(i=0;i<256;i=i+1)
        RegMemory[i] = 32'b00000000000000000000000000000111;
    end
end

always @ (posedge clk)
begin
    if (reg_write == 1)
        RegMemory[write_reg] = write_data;
end

always @ (read_reg_1 or read_reg_2)
begin
	data_reg_1 = RegMemory[read_reg_1];
	data_reg_2 = RegMemory[read_reg_2];
end

endmodule

