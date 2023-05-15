module bk_obstacle1_example (
	input logic [9:0] DrawX, DrawY,
	input logic vga_clk, blank,
	output logic [3:0] red, green, blue
);

logic [16:0] rom_address;
logic [1:0] rom_q;

logic [3:0] palette_red, palette_green, palette_blue;

assign rom_address = ((DrawX * 340) / 640) + (((DrawY * 240) / 480) * 340);

always_ff @ (posedge vga_clk) begin
	red <= 4'h0;
	green <= 4'h0;
	blue <= 4'h0;

	if (blank) begin
		red <= palette_red;
		green <= palette_green;
		blue <= palette_blue;
	end
end

bk_obstacle1_rom bk_obstacle1_rom (
	.clock   (vga_clk),
	.address (rom_address),
	.q       (rom_q)
);

bk_obstacle1_palette bk_obstacle1_palette (
	.index (rom_q),
	.red   (palette_red),
	.green (palette_green),
	.blue  (palette_blue)
);

endmodule
