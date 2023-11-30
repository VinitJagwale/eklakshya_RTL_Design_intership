//8:1 MUX bt gate level
module ex4(input [7:0]i,input [2:0]s,output y);

wire s0,s1,s2;
wire [7:0]a,o;

not(s0,s[0]);
not(s1,s[1]);
not(s2,s[2]);

and(a[7],s2,s1,s0);
and(a[6],s2,s1,s[0]);
and(a[5],s2,s[1],s0);
and(a[4],s2,s[1],s[0]);
and(a[3],s[2],s1,s0);
and(a[2],s[2],s1,s[0]);
and(a[1],s[2],s[1],s0);
and(a[0],s[2],s[1],s[0]);

and(o[0],a[0],i[0]);
and(o[1],a[1],i[1]);
and(o[2],a[2],i[2]);
and(o[3],a[3],i[3]);
and(o[4],a[4],i[4]);
and(o[5],a[5],i[5]);
and(o[6],a[6],i[6]);
and(o[7],a[7],i[7]);

or(y,o[0],o[1],o[2],o[3],o[4],o[5],o[6],o[7]);
endmodule

module tb;
reg [7:0]i;
reg [2:0]s;
wire y;
ex4 i1(i,s,y);
initial begin
i=8'b01100100;
$display("\ni=%b",i);
$display("\t\t    select   y ");
$monitor($time," %b     %b",s,y);
 #0 s=3'b000;
#10 s=3'b001;
#10 s=3'b010;
#10 s=3'b011;
#10 s=3'b100;
#10 s=3'b101;
#10 s=3'b110;
#10 s=3'b111;
end
endmodule
