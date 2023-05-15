module bk_obstacle_palette (
	input logic [1:0] index,
	output logic [3:0] red, green, blue
);

localparam [0:3][11:0] palette = {
	{4'h0, 4'h2, 4'hF},
	{4'hF, 4'hF, 4'hF},
	{4'h0, 4'h0, 4'h1},
	{4'h8, 4'h9, 4'hE}
};

assign {red, green, blue} = palette[index];

endmodule
