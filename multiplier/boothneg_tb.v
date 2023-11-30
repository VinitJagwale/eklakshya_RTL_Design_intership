module tb;
reg[3:0]m,q;
wire [7:0]ac;
boothmul multi1(ac,m,q);
initial begin
$display("\t\t\t M       Q         Accummulator");
$monitor($time," %b       %b         %d ",m,q,ac);
#10 m=4'b1001;q=4'd3;//-7x3
#10 m=4'd4;q=4'b1010;//4x-6
#10 m=4'd7;q=4'b1101;//7x-3
end
endmodule
