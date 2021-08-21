module lab1 #(parameter n = 10)
	(input clk, input miso,
	output sclk, output mosi, output ssb,
	output [23:0] accel, output [13:0] temp,
	output ready);
wire clk_inner;

clk_divider divider(.clk(clk), .out_clk(clk_inner));
SPI_controller spi(.clk(clk_inner),	.miso(miso),
	.sclk(sclk), .mosi(mosi), .ssb(ssb),
	.accel_out(accel), .temp_out(temp), .ready(ready));
endmodule

module SPI_controller
	(input clk, input miso,
	output sclk, output mosi, output ssb,
	output [23:0] accel_out, output [13:0] temp_out,
	output ready);
parameter command_read_accel = 0;
parameter read_accel = 1;
parameter command_read_temp = 2;
parameter read_temp = 3;
	
reg start = 0, clk_sync = 0;
reg [39:0] inner_data = 0;
reg [5:0] bit_number = 0;
reg [5:0] bit_count = 0;
reg [2:0] state = command_read_accel;
reg [14:0] hold = 0;
reg start_hold = 1;
reg mosi_on = 1;
reg [23:0] accel = 0;
reg [13:0] temp = 0;
reg inner_ready = 0;

assign ssb = ~start;
assign mosi = clk_sync & inner_data[bit_count - 1] & mosi_on;
assign sclk = clk_sync & clk;
assign accel_out = accel;
assign temp_out = temp;
assign ready = inner_ready;
	
always@ (posedge clk)
begin
	if ((bit_number == bit_count) && bit_count && ~start_hold)
	begin
		start <= 0;
		if(state == command_read_accel)
			hold <= 15'h2019;
		else
			hold <= 0;
		start_hold <= 1;
	end
	if(start_hold)
		if(hold == 0)
		begin
			start <= 1;
			start_hold <= 0;
		end
		else
			hold <= hold - 1;
end

always@ (negedge clk)
begin
	if (start && ~clk_sync)
	begin
		case(state)
		command_read_accel: begin
			inner_data <= 40'h5000000000;
			bit_count <= 40;
		end
		command_read_temp: begin
			inner_data <= 24'h540000;
			bit_count <= 24;
		end
		endcase
		clk_sync <= 1;
		bit_number <= 0;
		mosi_on <= 1;
		inner_ready <= 0;
	end
	else
	if (clk_sync && bit_number < (bit_count - 1))
	begin
		case(state)
		command_read_accel, command_read_temp: inner_data <= inner_data << 1;
		read_accel, read_temp: inner_data[bit_count - 1 - bit_number] <= miso;
		endcase
		bit_number <= bit_number + 1;
	end
	else
	if (clk_sync && bit_number == (bit_count - 1))
	begin
		case(state)
		command_read_accel: begin
			state <= read_accel;
			inner_data <= 40'h0;
			bit_count <= 32;
			bit_number <= 0;
			mosi_on <= 0;
		end
		read_accel: begin
			if(inner_data[31])
				accel <= (inner_data | miso) >> 8;
			state <= command_read_temp;
			bit_number <= bit_number + 1;
			clk_sync <= 0;
			inner_ready <= 1;
		end
		command_read_temp: begin
			state <= read_temp;
			inner_data <= 40'h0;
			bit_count <= 16;
			bit_number <= 0;
			mosi_on <= 0;
		end
		read_temp: begin
			temp <= inner_data | miso;
			state <= command_read_accel;
			bit_number <= bit_number + 1;
			clk_sync <= 0;
			inner_ready <= 1;
		end
		endcase
	end
end
endmodule

// clk - 50 MHz
module clk_divider (input clk, output out_clk);
parameter _5MHz = 10 / 2;
reg [7:0] counter = 0;
reg out_clk_inner = 0;
assign out_clk = out_clk_inner;

always@ (posedge clk)
begin
	counter = counter + 1;
	if (counter == _5MHz)
	begin
		counter = 0;
		out_clk_inner = ~out_clk_inner;
	end
end
endmodule