//4bit comparator
module ex13(input[3:0]a,b,output l,e,g);
assign l=a<b;
assign e=a==b;
assign g=a>b;
endmodule


module tb;
reg [3:0]a,b;
wire l,e,g;
ex13 i1(a,b,l,e,g);
initial begin
$monitor($time," a=%b b=%b less=%b equal=%b greater=%b",a,b,l,e,g);
a=4'b0001;b=4'b1010;
#10a=4'b1010;b=4'b1010;
#10a=4'b1101;b=4'b1000;
end
endmodule
