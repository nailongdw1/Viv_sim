`timescale 1ns / 1ps

module dds_modu_tb();

    reg        aclk_0;
    reg        rst_n;

    wire [15:0] sin_1M;
    wire [15:0] sin_1K;
    wire [31:0] sin_modu;
    wire [15:0] AM_out;
//    wire [15:0] TST_PT;
    // 1. 时钟生成 (100MHz)
    initial begin
        aclk_0 = 0;
        forever #5 aclk_0 = ~aclk_0;
    end

    // 2. 复位激励
    initial begin
        rst_n = 0;
        #10;                // 保持复位 1000ns
        rst_n = 1;            // 释放复位
    end

    // 3. 仿真运行控制 (跑到 10ms，足够观察 10 个 1kHz 周期)
    initial begin
        #5_000_000; 
        $stop;
    end

    // 4. 实例化顶层设计 
    design_dds_wrapper u_design_dds_wrapper (
        .aclk_0   (aclk_0),
        .rst_n    (rst_n),     
        .sin_1K   (sin_1K),
        .sin_1M   (sin_1M),
        .sin_modu (sin_modu),
//        .TST_PT   (TST_PT),
        .AM_out   (AM_out)
    );

endmodule