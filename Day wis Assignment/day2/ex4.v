//design the expression using WAND
module ex4(input x,y,z,output f);
wand f;
assign f=x|y;
assign f=z|y;
assign f=z|x;
endmodule

module tb;
reg x,y,z;
wire f;
ex4 i1(x,y,z,f);
initial begin
$monitor($time," x=%b y=%b z=%b F=%b ",x,y,z,f);
#10 x=0;y=1;z=1;
#10 x=0;y=0;z=1;
#10 x=1;y=1;z=0;
end
endmodule
