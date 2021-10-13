library verilog;
use verilog.vl_types.all;
entity nios_old is
    port(
        clk_clk         : in     vl_logic;
        gpio_export     : out    vl_logic_vector(2 downto 0);
        reset_reset_n   : in     vl_logic
    );
end nios_old;
