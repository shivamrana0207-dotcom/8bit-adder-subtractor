module adder_subtractor_8bit (
    input [7:0] A,
    input [7:0] B,
    input Mode,          // 0 = Add, 1 = Subtract
    output [7:0] Result,
    output CarryOut
);

wire [7:0] B_mod;
wire [8:0] Carry;

// Modify B using XOR (for subtraction)
assign B_mod = B ^ {8{Mode}};

// Initial carry = Mode
assign Carry[0] = Mode;

// Full adder logic
genvar i;
generate
    for(i = 0; i < 8; i = i + 1) begin
        assign {Carry[i+1], Result[i]} =
               A[i] + B_mod[i] + Carry[i];
    end
endgenerate

assign CarryOut = Carry[8];

endmodule
