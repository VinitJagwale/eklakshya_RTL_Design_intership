//gray to binary
module ex8(input[3:0]g,output[3:0]b);
buf(b[3],g[3]);
xor(b[2],g[2],b[3]);
xor(b[1],g[1],b[2]);
xor(b[0],g[0],b[1]);
endmodule


module tb;
reg[3:0]g;
wire[3:0]b;
ex7 i1(g,b);
initial begin
$display("\t\t      Gray      Binary");
$monitor($time,"   %b         %b",g,b);
 #0 g=4'b0000;
#10 g=4'b0001;
#10 g=4'b0010;
#10 g=4'b0011;
#10 g=4'b0100;
#10 g=4'b0101;
#10 g=4'b0110;
#10 g=4'b0111;
#10 g=4'b1000;
#10 g=4'b1001;
#10 g=4'b1010;
#10 g=4'b1011;
#10 g=4'b1100;
#10 g=4'b1101;
#10 g=4'b1110;
#10 g=4'b1111;
end
endmodule
