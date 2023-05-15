module brickwall1_palette (
	input logic [2:0] index,
	output logic [3:0] red, green, blue
);

localparam [0:7][11:0] palette = {
	{4'h8, 4'h7, 4'h6},
	{4'h9, 4'h8, 4'h6},
	{4'h9, 4'h8, 4'h6},
	{4'hA, 4'h9, 4'h7},
	{4'h9, 4'h8, 4'h6},
	{4'h8, 4'h7, 4'h6},
	{4'hA, 4'h8, 4'h7},
	{4'h9, 4'h8, 4'h6}
};

assign {red, green, blue} = palette[index];

endmodule
