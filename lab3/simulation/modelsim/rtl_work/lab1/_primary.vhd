library verilog;
use verilog.vl_types.all;
entity lab1 is
    generic(
        n               : integer := 10
    );
    port(
        clk             : in     vl_logic;
        miso            : in     vl_logic;
        sclk            : out    vl_logic;
        mosi            : out    vl_logic;
        ssb             : out    vl_logic;
        accel           : out    vl_logic_vector(23 downto 0);
        temp            : out    vl_logic_vector(13 downto 0);
        ready           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 1;
end lab1;
