//sr  latch
module ex6(input[1:0]sr,input e,output q,qb);
reg q,qb;
always@(*)
begin
if(e==1)
begin
 case(sr)
 2'b00 : begin q=q;qb=~q; end
 2'b01 : begin q=0;qb=~q; end
 2'b10 : begin q=1;qb=~q; end
 2'b11 : begin q=1'bx;qb=1'bx; end
 endcase
end
else
begin
 q=1'bx;q=1'bx;
end
end
endmodule



module tb;
reg[1:0]sr;
reg e;
wire q,qb;
ex6 i1(sr,e,q,qb);
initial begin
$display("\t\t     E   SR   Q   QB ");
$monitor($time," %b   %b   %b   %b",e,sr,q,qb);
 #0 e=0; sr=2'b01;
#10 e=0; sr=2'b10;
#10 e=1; sr=2'b01; 
#10 e=1; sr=2'b00; 
#10 e=1; sr=2'b10; 
#10 e=1; sr=2'b11; 
end 
endmodule

