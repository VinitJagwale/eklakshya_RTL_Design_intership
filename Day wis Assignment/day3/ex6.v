//4bit bit ripple carry adder

module ex6(input[3:0]x,y,input cin,output [3:0]s,output ca);
wire c1,c2,c3;
fa f0(x[0],y[0],cin,s[0],c1);
fa f1(x[1],y[1],c1,s[1],c2);
fa f2(x[2],y[2],c2,s[2],c3);
fa f3(x[3],y[3],c3,s[3],ca);
endmodule

module fa(input a,b,c,output s,y);
wor y;
xor(s,a,b,c);
and(y,a,b);
and(y,a,c);
and(y,b,c);
endmodule


module tb;
reg [3:0]x,y;
reg cin;
wire [3:0]s;
wire ca;
ex6 i1(x,y,cin,s,ca);
initial begin
$display("\t\t\t x        y     cin      sum    carry");
$monitor($time,"    %b     %b     %b      %b      %b ",x,y,cin,s,ca);
 #0 x=4'b1010;y=4'b0010;cin=0;
#10 x=4'b1010;y=4'b0010;cin=1;
#10 x=4'b1001;y=4'b1010;cin=0;
#10 x=4'b1001;y=4'b1010;cin=1;
end
endmodule
