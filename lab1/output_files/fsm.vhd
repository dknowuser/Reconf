library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity fsm is
	generic(  time_cnt_len   :integer:=8);
	port(
		reset:in  std_logic;
		clk:  in  std_logic;
		button: in  std_logic;
		pulse: out std_logic);
end fsm;
architecture arc of fsm is
type state is (idle, load_count1, wait_time1, wait_sw, load_count2, wait_time2, out_pulse);
signal current_state :  state:=idle;
signal time_count : integer  range 0 to time_cnt_len;
begin
  process(clk, reset)
  begin
  if (reset = '0') then      current_state <= idle; pulse<='0';
      elsif (clk'event and clk = '1') then
		case current_state is
            when idle => pulse<='0';
               if (button='0') then current_state <= load_count1;
               end if;
            when load_count1 => 
               time_count<=time_cnt_len-1;
					current_state <= wait_time1;
            when wait_time1 =>
					if (time_count=0) then
						current_state <= wait_sw;
					else time_count<= time_count - 1;
					end if;
				when wait_sw => 
					if (button='1') then
						current_state <= load_count2;
					else current_state <= idle; -------------
					end if;
				when load_count2 =>
					time_count<=time_cnt_len-1;
					if (button='1') then
						current_state <= wait_time2;
					else current_state <= idle; ------------
					end if;
				when wait_time2 =>
					if (time_count=0) then
						current_state <= out_pulse;
					else time_count<= time_count - 1;	
                                                                              end if;
				when out_pulse =>
					pulse<='1'; current_state <= idle;
                                                              when others =>
                                                     current_state <= idle;
                                               end case;
  end if;
end process clocked_proc;
end arc;