`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.03.2026 00:34:09
// Design Name: 
// Module Name: test_bench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test_bench(

    );
    reg clk;
    reg rst;
    wire Rh,Rb,Yh,Yb,Gb,Gh;
    code dut(.clk(clk),.rst(rst),.Rb(Rb),.Rh(Rh),.Gh(Gh),.Gb(Gb),.Yh(Yh),.Yb(Yb));
    initial begin
    clk=1'b0;
     forever #5 clk=~clk;
    end
    initial begin
    rst=1'b1;
    #20 rst=1'b0;
    end
    initial begin 
    #500000
    $stop;
    end
endmodule
