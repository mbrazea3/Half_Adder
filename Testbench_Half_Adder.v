//Test bench for half adder
module test_half_adder;
    reg A; // input
    reg B; // input
    wire SUM; // connect sum to output
    wire CARRY; // connect carry to output

    // instantiate half_adder module
    Half_Adder ha(.A(A), .B(B), .SUM(SUM), .CARRY(CARRY));

    // test cases
    initial begin
        //display everything in binary
        $monitor("A = %b, B = %b, SUM = %b, CARRY = %b", A, B, SUM, CARRY);

        // Test inputs
        A = 0; B = 0; #10; // 0 + 0 = 0
        A = 0; B = 1; #10; // 0 + 1 = 1
        A = 1; B = 0; #10; // 1 + 0 = 1
        A = 1; B = 1; #10; // 1 + 1 = 0

        // End simulation
        $finish;

    end
endmodule