module water_sprite_rom (
	input logic clock,
	input logic [8:0] address,
	output logic [2:0] q
);

logic [2:0] memory [0:399] /* synthesis ram_init_file = "./water_sprite/water_sprite.mif" */;

always_ff @ (posedge clock) begin
	q <= memory[address];
end

endmodule
