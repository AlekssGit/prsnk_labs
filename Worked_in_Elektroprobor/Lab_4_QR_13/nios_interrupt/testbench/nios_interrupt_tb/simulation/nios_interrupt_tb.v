// nios_interrupt_tb.v

// Generated using ACDS version 13.0sp1 232 at 2021.10.13.19:18:07

`timescale 1 ps / 1 ps
module nios_interrupt_tb (
	);

	wire        nios_interrupt_inst_clk_bfm_clk_clk;                  // nios_interrupt_inst_clk_bfm:clk -> [nios_interrupt_inst:clk_clk, nios_interrupt_inst_reset_bfm:clk]
	wire        nios_interrupt_inst_reset_bfm_reset_reset;            // nios_interrupt_inst_reset_bfm:reset -> nios_interrupt_inst:reset_reset_n
	wire        nios_interrupt_inst_interrupt_btn_bfm_conduit_export; // nios_interrupt_inst_interrupt_btn_bfm:sig_export -> nios_interrupt_inst:interrupt_btn_export
	wire  [3:0] nios_interrupt_inst_leds_export;                      // nios_interrupt_inst:leds_export -> nios_interrupt_inst_leds_bfm:sig_export

	nios_interrupt nios_interrupt_inst (
		.clk_clk              (nios_interrupt_inst_clk_bfm_clk_clk),                  //           clk.clk
		.reset_reset_n        (nios_interrupt_inst_reset_bfm_reset_reset),            //         reset.reset_n
		.interrupt_btn_export (nios_interrupt_inst_interrupt_btn_bfm_conduit_export), // interrupt_btn.export
		.leds_export          (nios_interrupt_inst_leds_export)                       //          leds.export
	);

	altera_avalon_clock_source #(
		.CLOCK_RATE (50000000),
		.CLOCK_UNIT (1)
	) nios_interrupt_inst_clk_bfm (
		.clk (nios_interrupt_inst_clk_bfm_clk_clk)  // clk.clk
	);

	altera_avalon_reset_source #(
		.ASSERT_HIGH_RESET    (0),
		.INITIAL_RESET_CYCLES (50)
	) nios_interrupt_inst_reset_bfm (
		.reset (nios_interrupt_inst_reset_bfm_reset_reset), // reset.reset_n
		.clk   (nios_interrupt_inst_clk_bfm_clk_clk)        //   clk.clk
	);

	altera_conduit_bfm nios_interrupt_inst_interrupt_btn_bfm (
		.sig_export (nios_interrupt_inst_interrupt_btn_bfm_conduit_export)  // conduit.export
	);

	altera_conduit_bfm_0002 nios_interrupt_inst_leds_bfm (
		.sig_export (nios_interrupt_inst_leds_export)  // conduit.export
	);

endmodule
