module lab1 #(parameter n = 16)
	(input clk, input in, output [7:0] ind0, output [7:0] ind1,
	output out_outclk, out_pulse);
reg [n-1:0] counter = 0;
reg [7:0] inner_ind0 = 0;
reg [7:0] inner_ind1 = 0;
assign ind0 = inner_ind0;
assign ind1 = inner_ind1;
assign out_outclk = inner_clk[1];
wire [23:0] inner_clk;
wire pulse;
assign out_pulse = pulse;

counter my_counter(.clock(clk), .q(inner_clk));
vsm my_vsm(.clk(inner_clk[10]), .in(in), .pulse(pulse));

always@ (posedge pulse)
	counter = counter + 1;

always@ (posedge clk)
begin
	case(counter & 16'h000F)
	0: inner_ind0 = 8'b00111111;
	1: inner_ind0 = 8'b00000110;
	2: inner_ind0 = 8'b01011011;
	3: inner_ind0 = 8'b01001111;
	4: inner_ind0 = 8'b01100110;
	5: inner_ind0 = 8'b01101101;
	6: inner_ind0 = 8'b01111101;
	7: inner_ind0 = 8'b00000111;
	8: inner_ind0 = 8'b01111111;
	9: inner_ind0 = 8'b01101111;
	10: inner_ind0 = 8'b01110111;
	11: inner_ind0 = 8'b01111100;
	12: inner_ind0 = 8'b00111001;
	13: inner_ind0 = 8'b01011110;
	14: inner_ind0 = 8'b01111001;
	15: inner_ind0 = 8'b01110001;
	endcase
	
	case((counter & 16'h00F0) >> 4)
	0: inner_ind1 = 8'b00111111;
	1: inner_ind1 = 8'b00000110;
	2: inner_ind1 = 8'b01011011;
	3: inner_ind1 = 8'b01001111;
	4: inner_ind1 = 8'b01100110;
	5: inner_ind1 = 8'b01101101;
	6: inner_ind1 = 8'b01111101;
	7: inner_ind1 = 8'b00000111;
	8: inner_ind1 = 8'b01111111;
	9: inner_ind1 = 8'b01101111;
	10: inner_ind1 = 8'b01110111;
	11: inner_ind1 = 8'b01111100;
	12: inner_ind1 = 8'b00111001;
	13: inner_ind1 = 8'b01011110;
	14: inner_ind1 = 8'b01111001;
	15: inner_ind1 = 8'b01110001;
	endcase
end
endmodule