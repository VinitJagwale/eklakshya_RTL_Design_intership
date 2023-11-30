//jk filp flop
module ex3(input [1:0]jk,input clk,output q,qb);
reg q,qb;
always@(posedge clk)
begin
case(jk)
2'b00 :begin q=q;qb=~q; end
2'b01 :begin q=0;qb=~q; end
2'b10 :begin q=1;qb=~q; end
default:begin q=~q;qb=~qb; end
endcase
end
endmodule




module tb;
reg [1:0]jk;
reg clk=1;
wire q,qb;
ex3 e3(jk,clk,q,qb);
always #5 clk=~clk;
initial begin
$display(" \t\t     JK   Q   QB ");
$monitor($time," %b   %b   %b",jk,q,qb);
#10 jk=2'b01;
#10 jk=2'b00;
#10 jk=2'b10;
#10 jk=2'b11;
end
initial begin
#80;$finish;
end
endmodule
