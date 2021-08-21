library verilog;
use verilog.vl_types.all;
entity lab1 is
    generic(
        n               : integer := 16
    );
    port(
        clk             : in     vl_logic;
        \in\            : in     vl_logic;
        ind0            : out    vl_logic_vector(7 downto 0);
        ind1            : out    vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of n : constant is 1;
end lab1;
