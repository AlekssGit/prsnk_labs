module lab_4 (
	input clk,
	input reset,
	output logic [3:0] led,
	input interrupt_btn
);

logic clr_rst;
logic clr_intrpt_btn;

bouncing bounce_reset (
    .clk (clk),
    .signal_i (reset),
    .signal_o (clr_rst)
);

bouncing bounce_intrpt(
    .clk			(clk),
    .signal_i	(interrupt_btn),
    .signal_o	(clr_intrpt_btn)
);

nios_interrupt nios_inst (
		.clk_clk              (clk),					// clk.clk
		.reset_reset_n       (clr_rst), 				// reset.reset_n
		.interrupt_btn_export (clr_intrpt_btn), 	// interrupt_btn.export
		.leds_export           (led) 					// leds.export
	);
	
endmodule