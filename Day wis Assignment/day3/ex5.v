//1:4 demux
module ex5(input i,input [1:0]s,output[3:0]y);

not(s1,s[1]);
not(s0,s[0]);

and(y[0],s1,s0);
and(y[1],s1,s[0]);
and(y[2],s[1],s0);
and(y[3],s[1],s[0]);
endmodule




module tb;
reg i;
reg [1:0]s;
wire[3:0]y;
ex5 i1(i,s,y);
initial begin
$display("\t\t    S[1]S[0]   Y ");
$monitor($time,"   %b     %b",s,y);
#0 s=2'b00;
#10 s=2'b01;
#10 s=2'b10;
#10 s=2'b11;
end
endmodule
