// post_process.v -- 截取高16位并做饱和保护
module post_process(
    input  wire              clk,
    input  wire signed [31:0] mult_in,
    output reg signed [15:0] dout
);
    always @(posedge clk) begin
        // 判断高17位（符号位+溢出位）
        if (mult_in[31:15] != 17'h00000 && mult_in[31:15] != 17'h1FFFF) begin
            if (mult_in[31]) 
                dout <= 16'sh7FFF; // 正溢出钳位
            else 
                dout <= 16'sh8000; // 负溢出钳位
        end else begin
            dout <= mult_in[31:16]; // 正常截取高16位
        end
    end
endmodule