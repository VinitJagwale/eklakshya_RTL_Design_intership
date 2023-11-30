module test_bench;
reg [31:0] in1, in2;
reg [4:0]opcode;
reg en;
wire [31:0] result;
integer i;
alu a1( in1, in2, opcode, en, result);
initial begin
 $display("\n\n\n\t\t\t\t     <<< SIMULATION STARTED>>>\n\n\n");
 $display("\t\tTime \t ENABLE \tINPUT-1 \tINPUT-2   OPCODE \t   RESULT ");
 $monitor($time," \t %d      %d       %d       %d       %d ", en, in1, in2, opcode, result);

//1st example
 #0 en=1; in1=32'd4;in2=32'd7;
 for(i=0;i<26;i=i+1) #1 opcode=i;

//2nd example
 $display("\n\n\t\tTime \t ENABLE \tINPUT-1 \tINPUT-2   OPCODE \t   RESULT ");
 en=1; in1=32'd12000;in2=32'd8000;
 for(i=0;i<26;i=i+1) #1 opcode=i;

//3rd example
 $display("\n\n\t\tTime \t ENABLE \tINPUT-1 \tINPUT-2   OPCODE \t   RESULT ");
 en=1; in1=32'd15432;in2=32'd6772;
 for(i=0;i<26;i=i+1) #1 opcode=i;
end
endmodule
