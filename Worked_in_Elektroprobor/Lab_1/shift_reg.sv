`define DIRECTION 1'b1

module shift_reg(

	input logic btn_i,			//Trigger to shift
	input logic digit_i,		//Data shifted
	input logic clk,			//Input clk
	input logic reset,			//Input reset

	//output logic [3:0] semisigment_digits,		//Control semisigment digits
	//output logic [6:0] semisigment_data			//Displaying data
	
	output [3:0] leds
);

logic [9:0] data_reg;
logic prev_btn;

assign leds = data_reg[3:0];

logic btn;
logic digit;
logic nbtn_i;
logic ndigit_i;

assign nbtn_i = btn_i;
assign ndigit_i = digit_i;

logic nreset;
assign nreset = reset;

/*
semisigments_show show_sems (
    .i_clock (clk),
	.nreset_i (reset),
    .data_dig_3 (data_reg[3:0]),
    .data_dig_2 (data_reg[7:4]),
    .data_dig_1 ({2'b00, data_reg[9:8]}),
    .data_dig_0 (4'd0),
    .digits		(semisigment_digits),
    .lcd_out	(semisigment_data)
);
*/

bouncing bounce_btn (
	.clk(clk),
	.signal_i(nbtn_i),
	.signal_o(btn)
);

bouncing bounce_digit (
	.clk(clk),
	.signal_i(ndigit_i),
	.signal_o(digit)
);

always @(posedge clk, posedge nreset) 
begin
	if(nreset)
	begin
		data_reg = 10'd1;
	end
	else
	begin
		if(btn)
		begin
			if(!prev_btn)
			begin
				prev_btn = 1'b1;
				data_reg = `DIRECTION ? {data_reg[8:0], digit} : {digit, data_reg[8:0]};
			end
		end
		else
		begin
			prev_btn = 1'b0;
		end
	end
end

endmodule