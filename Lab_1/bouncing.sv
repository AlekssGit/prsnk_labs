`define LEVEL_COUNT 32'd10000 // 50Mhz/5

module bouncing (
    input clk,
    input signal_i,
    output logic signal_o
);

logic prev_signal;
logic signal;

assign signal = signal_i;

int counter;

always @(posedge clk) 
begin
    if (prev_signal == signal)
    begin
        counter++;
    end
    else
    begin
        prev_signal = signal;
        counter = 0;
    end   

    // if(counter == `LEVEL_COUNT) 
   if(counter == 32'd25)
    begin
        counter = 0;
        signal_o = signal;
    end
end

endmodule