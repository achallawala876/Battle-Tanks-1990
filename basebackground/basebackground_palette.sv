module basebackground_palette (
	input logic [1:0] index,
	output logic [3:0] red, green, blue
);

localparam[0:3][11:0] palette = {
	{4'hD, 4'hB, 4'h8},
	{4'hD, 4'hC, 4'h9},
	{4'hD, 4'hB, 4'h8},
	{4'hD, 4'hC, 4'h8}
};

assign {red, green, blue} = palette[index];

endmodule
