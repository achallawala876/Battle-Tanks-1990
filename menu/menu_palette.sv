module menu_palette (
	input logic [2:0] index,
	output logic [3:0] red, green, blue
);

localparam [0:7][11:0] palette = {
	{4'hE, 4'hE, 4'hD},
	{4'hE, 4'hD, 4'hA},
	{4'hA, 4'hD, 4'hE},
	{4'h7, 4'hA, 4'hC},
	{4'hC, 4'hE, 4'hF},
	{4'hB, 4'hC, 4'hC},
	{4'h9, 4'hC, 4'hC},
	{4'hD, 4'hC, 4'hA}
};

assign {red, green, blue} = palette[index];

endmodule
