module vsm #(parameter time_cnt_len = 140)
	(input clk, input in, output pulse);
parameter idle = 0;
parameter load_count1 = 1;
parameter wait_time1 = 2;
parameter wait_sw = 3;
parameter load_count2 = 4;
parameter wait_time2 = 5;
parameter out_pulse = 6;
reg [2:0] state = idle;
reg [2:0] time_count = 0;
reg pulse_reg = 0;

assign pulse = pulse_reg;

always@ (posedge clk)
begin
	case(state)
	idle:	begin
		pulse_reg <= 0;
		if(in == 0)
			state <= load_count1;
	end
	
	load_count1: begin
		time_count <= time_cnt_len;
		state <= wait_time1;
	end
	
	wait_time1:
		if(time_count == 0)
			state <= wait_sw;
		else
			time_count <= time_count - 1;
	
	wait_sw:
		if(in == 1)
			state <= load_count2;
		else
			state <= idle;
			
	load_count2: begin
		time_count <= time_cnt_len;
		if(in == 1)
			state <= wait_time2;
		else
			state <= idle;
	end
	
	wait_time2:
		if(time_count == 0)
			state <= out_pulse;
		else
			time_count <= time_count - 1;

	out_pulse: begin
		pulse_reg <= 1;
		state <= idle;
	end
	endcase
end
endmodule