`timescale 1ns/1ns
`include "flexgraph.v"

`define check(condition) if (!(condition === 1'b1)) $display("FAILED!")

module testbench();

    reg        clk   = 0;
    reg        reset = 0;
    reg        in_valid;
    reg[31:0]  in_data;
    wire       in_ready;
    wire       out_valid;
    wire[15:0] out_data;

    input wire clk,
    input wire reset,
    input wire io_qpi_rd_req_almostfull,
    input wire[13:0] io_qpi_rd_rsp_mdata,
    input wire[511:0] io_qpi_rd_rsp_data,
    input wire io_qpi_rd_rsp_valid,
    input wire io_qpi_wr_req_almostfull,
    input wire[13:0] io_qpi_wr_rsp0_mdata,
    input wire io_qpi_wr_rsp0_valid,
    input wire[13:0] io_qpi_wr_rsp1_mdata,
    input wire io_qpi_wr_rsp1_valid,
    input wire[511:0] io_ctx,
    input wire io_start,

    output wire[19:0] io_qpi_rd_req_addr,
    output wire[13:0] io_qpi_rd_req_mdata,
    output wire io_qpi_rd_req_valid,
    output wire[19:0] io_qpi_wr_req_addr,
    output wire[13:0] io_qpi_wr_req_mdata,
    output wire[511:0] io_qpi_wr_req_data,
    output wire io_qpi_wr_req_valid,
    output wire io_done

    GCD gcd(clk, reset, in_valid, in_data, in_ready, out_valid, out_data);

    always begin
        #1 clk = !clk;
    end

    initial begin
        $dumpfile("testbench.vcd");
        $dumpvars(0, testbench);

        $display ("time\tclk\treset\tout");
        $monitor("%3d\t%b\t%b\t%b\t%h\t%b\t%b\t%h", $time, clk, reset, in_valid, in_data, in_ready, out_valid, out_data);

        #0 reset  = 1;
        #1 reset  = 1;
        #1 reset  = 0;

        #0 in_data  = 32'h0030_0020;
           in_valid = 1;

        #11 `check(out_valid == 1);
            `check(out_data == 16);
            $finish;
    end

endmodule
