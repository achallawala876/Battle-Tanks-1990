module bulletmap_palette (
	input logic [0:0] index,
	output logic [3:0] red, green, blue
);

localparam [0:1][11:0] palette = {
	{4'hD, 4'h1, 4'h7},
	{4'h7, 4'h4, 4'h2}
};

assign {red, green, blue} = palette[index];

endmodule
