module tb;

reg [7:0] A, B;
reg Mode;
wire [7:0] Result;
wire CarryOut;

adder_subtractor_8bit uut (
    .A(A),
    .B(B),
    .Mode(Mode),
    .Result(Result),
    .CarryOut(CarryOut)
);

initial begin
    // Case 1: Addition
    A = 8'd10; B = 8'd5; Mode = 0;
    #10;

    // Case 2: Subtraction
    A = 8'd10; B = 8'd5; Mode = 1;
    #10;

    // Case 3: Negative result
    A = 8'd5; B = 8'd10; Mode = 1;
    #10;

    $stop;
end

endmodule
