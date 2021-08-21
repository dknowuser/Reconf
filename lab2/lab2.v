module lab2(input wire clk,
	output wire [7:0] data_out);
nios u0 (
        .clk_clk                 (clk),
        .pio_0_external_connection_export (data_out)
    );
endmodule