//full adder using if else
module ex1(input a,b,c,output s,cout);
 reg s,cout;
always@(a,b,c)
begin
if(a^b^c)
 s=1;
else
 s=0;
if((a&b)|(a&c)|(c&b))
 cout=1;
else 
 cout=0;
end
endmodule



module tb;
reg a,b,c;
wire s,cout;
ex1 i1(a,b,c,s,cout);
initial begin
$display("\t\t      abc  sum  carry ");
$monitor($time,"  %b%b%b   %b   %b",a,b,c,s,cout);
#0 a=0;b=0;c=0;
#10 a=0;b=0;c=1;
#10 a=0;b=1;c=0;
#10 a=0;b=1;c=1;
#10 a=1;b=0;c=0;
#10 a=1;b=0;c=1;
#10 a=1;b=1;c=0;
#10 a=1;b=1;c=1;
end
endmodule
