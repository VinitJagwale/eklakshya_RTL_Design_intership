//solve the give example
module ex8(input [7:0]a,b,c,d,output[7:0] X,Y);
assign Y=((a>b)&&(c<d));
assign X=((~a & ^b) | (a & b)) ^a;
endmodule

module tb;
reg [7:0]a,b,c,d;
wire [7:0]X,Y;

ex8 i1(a,b,c,d,X,Y);
initial begin
$monitor(" X= %b %d  \n Y= %b %d ",X,X,Y,Y);
a=21;b=54;c=34;d=35;
end
endmodule 
