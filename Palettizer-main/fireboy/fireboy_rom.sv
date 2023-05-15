module fireboy_rom (
	input logic clock,
	input logic [18:0] address,
	output logic [7:0] q
);

logic [7:0] memory [0:307199] /* synthesis ram_init_file = "./fireboy/fireboy.mif" */;

always_ff @ (posedge clock) begin
	q <= memory[address];
end

endmodule
