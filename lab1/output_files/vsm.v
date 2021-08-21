module vsm #(parameter time_cnt_len = 5)
	(input clk, input in, output pulse));
parameter idle = 0;
parameter load_count1 = 1;
parameter wait_time1 = 2;
parameter wait_sw = 3;
parameter load_count2 = 4;
parameter wait_time2 = 5;
parameter out_pulse = 6;
reg [2:0] state = idle;
reg [2:0] time_count = 0;

always@ (posedge clk)
begin
end
endmodule