// Half Adder Module
module Half_Adder(
    input A,         // First input
    input B,         // Second input
    output SUM,      // Sum output
    output CARRY     // Carry output
);

// Logic for the half adder
assign SUM = A ^ B;      // SUM is A XOR B
assign CARRY = A & B;    // CARRY is A AND B

endmodule