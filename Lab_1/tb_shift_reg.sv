`timescale 1ns/1ps

class myBtn;
    rand bit val;
endclass

module tb_shift_reg;

logic btn;
logic digit;
logic clk;
logic reset;
logic [6:0] semisegment_data;
logic [3:0] semisegment_digits;

shift_reg device (
	.btn_i  (btn),			    //Trigger to shift
	.digit_i  (digit),			//Data shifted
	.clk    (clk),			    //Input clk
	.reset  (reset),			//Input reset

	.semisigment_digits (semisegment_digits),       //Control semisigment digits
	.semisigment_data   (semisegment_data)		    //Displaying data
);



enum int unsigned {IDLE, LOW_BTN, BOUNCING, HIGH_BTN} test_stage;

myBtn btn_obj;

int counter = 0;
int loop_counter = 0;

initial 
begin
    btn_obj = new();

    reset = 1'b0;
    #5
    reset = 1'b1;
    #5
    reset = 1'b0;

    btn = 1'b0;
    digit = 1'b0;

    test_stage = IDLE;

    forever 
    begin
        counter++;
        #5
        clk = 1'b1;

        if(test_stage == BOUNCING)
        begin
            assert (btn_obj.randomize()); 
            btn = btn_obj.val;
        end

        #5 
        clk = 1'b0;

        if(test_stage == BOUNCING)
        begin
            assert (btn_obj.randomize()); 
            btn = btn_obj.val;
        end
        else if(test_stage == LOW_BTN)
        begin
            btn = 1'b0;
        end
        else if(test_stage == HIGH_BTN)
        begin
            btn = 1'b1;
        end
 
        if(counter == 50)
            test_stage = BOUNCING;
        else if (counter == 75)
            test_stage = HIGH_BTN;
        else if(counter == 175)
            test_stage = BOUNCING;
        else if (counter == 200)
            test_stage = LOW_BTN;
        else if (counter == 350) 
        begin
            loop_counter++;
            counter = 0;
        end

        if(loop_counter % 4 == 0)
            digit = 1'b1;
        else
            digit = 1'b0;
    end    
end

endmodule