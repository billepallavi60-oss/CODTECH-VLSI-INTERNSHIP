// CODTECH VLSI Internship - Task 3
// Intern ID: CITS7481
// Name: Bille Pallavi
// Task: 4-to-1 Multiplexer Design

module mux_4to1 (
    input [3:0] I,      // 4 inputs
    input [1:0] S,      // 2 select lines
    output Y            // Output
);
    assign Y = (S == 2'b00) ? I[0] :
               (S == 2'b01) ? I[1] :
               (S == 2'b10) ? I[2] : I[3];
endmodule
