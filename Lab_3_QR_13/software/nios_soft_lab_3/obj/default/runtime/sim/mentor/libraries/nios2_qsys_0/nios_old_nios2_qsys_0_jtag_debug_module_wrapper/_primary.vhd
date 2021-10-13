library verilog;
use verilog.vl_types.all;
entity nios_old_nios2_qsys_0_jtag_debug_module_wrapper is
    port(
        MonDReg         : in     vl_logic_vector(31 downto 0);
        break_readreg   : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        dbrk_hit0_latch : in     vl_logic;
        dbrk_hit1_latch : in     vl_logic;
        dbrk_hit2_latch : in     vl_logic;
        dbrk_hit3_latch : in     vl_logic;
        debugack        : in     vl_logic;
        monitor_error   : in     vl_logic;
        monitor_ready   : in     vl_logic;
        reset_n         : in     vl_logic;
        resetlatch      : in     vl_logic;
        tracemem_on     : in     vl_logic;
        tracemem_trcdata: in     vl_logic_vector(35 downto 0);
        tracemem_tw     : in     vl_logic;
        trc_im_addr     : in     vl_logic_vector(6 downto 0);
        trc_on          : in     vl_logic;
        trc_wrap        : in     vl_logic;
        trigbrktype     : in     vl_logic;
        trigger_state_1 : in     vl_logic;
        jdo             : out    vl_logic_vector(37 downto 0);
        jrst_n          : out    vl_logic;
        st_ready_test_idle: out    vl_logic;
        take_action_break_a: out    vl_logic;
        take_action_break_b: out    vl_logic;
        take_action_break_c: out    vl_logic;
        take_action_ocimem_a: out    vl_logic;
        take_action_ocimem_b: out    vl_logic;
        take_action_tracectrl: out    vl_logic;
        take_action_tracemem_a: out    vl_logic;
        take_action_tracemem_b: out    vl_logic;
        take_no_action_break_a: out    vl_logic;
        take_no_action_break_b: out    vl_logic;
        take_no_action_break_c: out    vl_logic;
        take_no_action_ocimem_a: out    vl_logic;
        take_no_action_tracemem_a: out    vl_logic
    );
end nios_old_nios2_qsys_0_jtag_debug_module_wrapper;
