`define FIRST_UP    5'd24
`define FIRST_DOWN  5'd10
`define SECOND_UP   5'd8
`define SECOND_DOWN 5'd18
`define THIRD_UP    5'd16
`define THIRD_DOWN  5'd2

module lab_3 (
	input logic clk_50,
	input logic reset_btn,
	input logic switch_src_led,
	output [2:0] led_o
	);
	
	logic [2:0] led_nios;
	logic [2:0] led_fpga;
	
	assign led_o = switch_src_led ? led_nios : led_fpga;
	
nios_old nios_instance (
		.clk_clk (clk_50),       //   clk.clk
		.gpio_export (led_nios),   //  gpio.export
		.reset_reset_n (reset_btn) // reset.reset_n
	);

	
logic [4:0] counter;

logic clk_10Hz;
generator #(500_0000) //for 10Hz is 500_0000
    generator_100Hz(
	.nreset_i (reset_btn),
	.i_clk (clk_50),
	.o_clk (clk_10Hz)
	);

always @(posedge clk_10Hz, negedge reset_btn) 
begin
    if(!reset_btn)
    begin
        led_fpga = 3'b000;
        counter = 4'd0;
    end
    else
    begin
        counter++;
        case (counter)
            `FIRST_UP:begin led_fpga[0] = 1'b1; counter = 5'd0; end
            `FIRST_DOWN:    led_fpga[0] = 1'b0;
            `SECOND_UP:     led_fpga[1] = 1'b1;
            `SECOND_DOWN:   led_fpga[1] = 1'b0; 
            `THIRD_DOWN:    led_fpga[2] = 1'b0;
            `THIRD_UP:      led_fpga[2] = 1'b1; 
            default: ;//begin led_fpga[0] = led_fpga0]; led_fpga[1] = led_fpga[1]; led_fpga[2] = led_fpga[2]; end
        endcase
    end
end
	
endmodule