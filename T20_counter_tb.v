`include "T20_counter.v"

module T20_counter_tb;

    reg rst, user_input;
    wire [2:0]plastic_count;

    counter c1(user_input, rst, plastic_count);

    initial
        begin
            $dumpfile("T20_counter.vcd");
            $dumpvars(0, T20_counter_tb);

            rst = 0;
            user_input = 0;
            
            repeat(10)
                begin
                    repeat(10)
                        begin
                            $monitor("%b", user_input);
                            user_input = {$random} % 2;
                            #2;
                        end 
                end
        end
endmodule