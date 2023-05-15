module menu1_rom (
	input logic clock,
	input logic [14:0] address,
	output logic [1:0] q
);

logic [1:0] memory [0:19199] /* synthesis ram_init_file = "./menu1/menu1.mif" */;

always_ff @ (posedge clock) begin
	q <= memory[address];
end

endmodule
