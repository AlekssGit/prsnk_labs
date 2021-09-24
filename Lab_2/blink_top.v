module blink_top (
	input clk_50,
	input reset_btn,
	output [3:0] led
	);
	
	
	nios tt (
		.board_led_export(led),  			//  board_led.export
		.clk_clk(clk_50),           		// clk.clk
		.reset_reset_n(reset_btn)      	// reset.reset_n
	);

endmodule
		