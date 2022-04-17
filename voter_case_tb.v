`timescale 1ns/1ps
module voter_case_tb ();
reg [3:0] I; // I 4 men
wire [3:1] O; // O Result

initial begin
   #10 I=4'b0000;
   #10 I=4'b0000;
   #10 I=4'b0001;
   #10 I=4'b0010;
   #10 I=4'b0011;
   #10 I=4'b0100;
   #10 I=4'b0101;
   #10 I=4'b0110;
   #10 I=4'b0111;
   #10 I=4'b1000;
   #10 I=4'b1001;
   #10 I=4'b1010;
   #10 I=4'b1011;
   #10 I=4'b1100;
   #10 I=4'b1101;
   #10 I=4'b1110;
   #10 I=4'b1111;
end

initial begin
    $dumpfile("voter_case.vcd");
    $dumpvars(0, voter_case_tb);
end

voter_case voter_case_tb(
    .I(I),
    .O(O)
);

endmodule
