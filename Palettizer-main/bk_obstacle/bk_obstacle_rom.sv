module bk_obstacle_rom (
	input logic clock,
	input logic [16:0] address,
	output logic [1:0] q
);

logic [1:0] memory [0:81599] /* synthesis ram_init_file = "./bk_obstacle/bk_obstacle.mif" */;

always_ff @ (posedge clock) begin
	q <= memory[address];
end

endmodule
