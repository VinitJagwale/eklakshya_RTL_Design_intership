module add;
reg [3:0]x,y,z;
initial begin
assign x=4'b0100;
assign y=4'b1000;
assign z=x+y;
#5 $display("The sum of x:%d and y:%d is z:%d in decimal",x,y,z);
#5 $display("The sum of x:%h and y:%h is z:%h in hexadecimal",x,y,z);
#5 $display("The sum of x:%b and y:%b is z:%b in binary",x,y,z);
$finish;
end
endmodule
