module semisigments_show (
    input logic i_clock,
	input logic nreset_i,
    input logic [3:0] data_dig_0,
    input logic [3:0] data_dig_1,
    input logic [3:0] data_dig_2,
    input logic [3:0] data_dig_3,
    output logic [3:0] digits,
    output logic [6:0] lcd_out
);

reg [6:0] led_inv_dig_0;
reg [6:0] led_inv_dig_1;
reg [6:0] led_inv_dig_2;
reg [6:0] led_inv_dig_3;

//Понижение частоты для переключения цифр, так как сегменты объединены в одну цепь
reg clk_led;

generator  #(100000) gen_led (
	.nreset_i 	(nreset_i),
	.i_clk		(i_clock),
	.o_clk		(clk_led)
	);

semisegment seg_dig_0 (.number(data_dig_0), .result(led_inv_dig_0));
semisegment seg_dig_1 (.number(data_dig_1), .result(led_inv_dig_1));
semisegment seg_dig_2 (.number(data_dig_2), .result(led_inv_dig_2));
semisegment seg_dig_3 (.number(data_dig_3), .result(led_inv_dig_3));


always@(posedge clk_led, negedge nreset_i)
begin
	if(!nreset_i)
	begin
			digits[0] = 1'b1;
			digits[1] = 1'b1;
			digits[2] = 1'b1;
			digits[3] = 1'b1;
			
			lcd_out = 7'b1111111;
	end
	else
	begin
		if(digits[0] == 1'b0)
		begin
			digits[0] = 1'b1;
			digits[1] = 1'b0;
			digits[2] = 1'b1;
			digits[3] = 1'b1;
			
			lcd_out = ~led_inv_dig_1;
		end
		else if(digits[1] == 1'b0)
		begin
			digits[0] = 1'b1;
			digits[1] = 1'b1;
			digits[2] = 1'b0;
			digits[3] = 1'b1;
			
			lcd_out = ~led_inv_dig_2;
		end
		else if(digits[2] == 1'b0)
		begin
			digits[0] = 1'b1;
			digits[1] = 1'b1;
			digits[2] = 1'b1;
			digits[3] = 1'b0;
			
			lcd_out = ~led_inv_dig_3;
		end
		else
		begin
			digits[0] = 1'b0;
			digits[1] = 1'b1;
			digits[2] = 1'b1;
			digits[3] = 1'b1;
			
			lcd_out = ~led_inv_dig_0;
		end
	end

end
endmodule