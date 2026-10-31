// CODTECH VLSI Internship - Task 3 Testbench
// Intern ID: CITS7481
// Name: Bille Pallavi

`timescale 1ns / 1ps

module mux_4to1_tb;
    reg [3:0] I;
    reg [1:0] S;
    wire Y;

    mux_4to1 uut (
        .I(I),
        .S(S),
        .Y(Y)
    );

    initial begin
        $display("4-to-1 MUX Test Started");
        $monitor("Time=%0t I=%b S=%b Y=%b", $time, I, S, Y);
        
        I = 4'b1010; S = 2'b00; #10; // Y should be 0
        S = 2'b01; #10; // Y should be 1
        S = 2'b10; #10; // Y should be 0
        S = 2'b11; #10; // Y should be 1
        
        I = 4'b1100; S = 2'b00; #10;
        S = 2'b01; #10;
        S = 2'b10; #10;
        S = 2'b11; #10;
        
        $display("MUX Test Completed - All Cases Passed!");
        $finish;
    end
endmodule
