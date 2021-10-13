// nios_old_tb.v

// Generated using ACDS version 13.0sp1 232 at 2021.10.13.18:40:10

`timescale 1 ps / 1 ps
module nios_old_tb (
	);

	wire        nios_old_inst_clk_bfm_clk_clk;       // nios_old_inst_clk_bfm:clk -> [nios_old_inst:clk_clk, nios_old_inst_reset_bfm:clk]
	wire        nios_old_inst_reset_bfm_reset_reset; // nios_old_inst_reset_bfm:reset -> nios_old_inst:reset_reset_n
	wire  [2:0] nios_old_inst_gpio_export;           // nios_old_inst:gpio_export -> nios_old_inst_gpio_bfm:sig_export

	nios_old nios_old_inst (
		.clk_clk       (nios_old_inst_clk_bfm_clk_clk),       //   clk.clk
		.gpio_export   (nios_old_inst_gpio_export),           //  gpio.export
		.reset_reset_n (nios_old_inst_reset_bfm_reset_reset)  // reset.reset_n
	);

	altera_avalon_clock_source #(
		.CLOCK_RATE (50000000),
		.CLOCK_UNIT (1)
	) nios_old_inst_clk_bfm (
		.clk (nios_old_inst_clk_bfm_clk_clk)  // clk.clk
	);

	altera_avalon_reset_source #(
		.ASSERT_HIGH_RESET    (0),
		.INITIAL_RESET_CYCLES (50)
	) nios_old_inst_reset_bfm (
		.reset (nios_old_inst_reset_bfm_reset_reset), // reset.reset_n
		.clk   (nios_old_inst_clk_bfm_clk_clk)        //   clk.clk
	);

	altera_conduit_bfm nios_old_inst_gpio_bfm (
		.sig_export (nios_old_inst_gpio_export)  // conduit.export
	);

endmodule
