//design the expression using WOR
module ex4(input a,b,output f);
wor f;
assign f=a&b;
assign f=~a&~b;
endmodule

module tb;
reg a,b;
wire f;
ex4 i1(a,b,f);
initial begin
$monitor($time," A=%b  B=%b  F=%b ",a,b,f);
#10 a=0;b=0;
#10 a=0;b=1;
#10 a=1;b=0;
#10 a=1;b=1;
end
endmodule
