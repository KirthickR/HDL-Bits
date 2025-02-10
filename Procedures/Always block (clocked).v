// synthesis verilog_input_version verilog_2001
module top_module(
    input clk,
    input a,
    input b,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff   );
assign out_assign=a^b;
    //assign out_always_ff=a^b;
    always@(*)
        begin
            out_always_comb=a^b;
        end
    always@(posedge clk)
        begin
            if(clk)
                out_always_ff<=a^b;
            else
                out_always_ff<=0;
        end
endmodule
