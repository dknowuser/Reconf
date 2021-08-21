library verilog;
use verilog.vl_types.all;
entity SPI_controller is
    generic(
        command_read_accel: integer := 0;
        read_accel      : integer := 1;
        command_read_temp: integer := 2;
        read_temp       : integer := 3
    );
    port(
        clk             : in     vl_logic;
        miso            : in     vl_logic;
        sclk            : out    vl_logic;
        mosi            : out    vl_logic;
        ssb             : out    vl_logic;
        accel_out       : out    vl_logic_vector(23 downto 0);
        temp_out        : out    vl_logic_vector(13 downto 0);
        ready           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of command_read_accel : constant is 1;
    attribute mti_svvh_generic_type of read_accel : constant is 1;
    attribute mti_svvh_generic_type of command_read_temp : constant is 1;
    attribute mti_svvh_generic_type of read_temp : constant is 1;
end SPI_controller;
