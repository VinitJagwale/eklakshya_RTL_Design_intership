// 4bit binary to gray
module ex7(input [3:0]b,output [3:0]g);
buf (g[3],b[3]);
xor(g[2],b[3],b[2]);
xor(g[1],b[2],b[1]);
xor(g[0],b[1],b[0]);
endmodule


module tb;
reg[3:0]b;
wire[3:0]g;
ex7 i1(b,g);
initial begin
$display("\t\t      Binary      Gray");
$monitor($time,"   %b         %b",b,g);
 #0 b=4'b0000;
#10 b=4'b0001;
#10 b=4'b0010;
#10 b=4'b0011;
#10 b=4'b0100;
#10 b=4'b0101;
#10 b=4'b0110;
#10 b=4'b0111;
#10 b=4'b1000;
#10 b=4'b1001;
#10 b=4'b1010;
#10 b=4'b1011;
#10 b=4'b1100;
#10 b=4'b1101;
#10 b=4'b1110;
#10 b=4'b1111;
end
endmodule
