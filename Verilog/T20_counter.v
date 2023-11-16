module T20_counter(clk, rst, count);

    input wire clk, rst;
    output reg [2:0]count = 0;

    always@ (posedge clk) 
        begin
            if(rst)
                count <= 0;
            else if (count == 3'b111)
                count <= 0;
            else 
                count <= count + 1'b1;
        end
endmodule