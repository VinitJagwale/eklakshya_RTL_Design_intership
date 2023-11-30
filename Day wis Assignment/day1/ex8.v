
module ex8;
integer a,b,c,d,e;
integer f;
initial begin
 a=$random()%10;
 b=$random()%10;
 c=$random()%10;
 d=$random()%10;
 e=$random()%10;
 f=a*b+(c+d)-e;
$display("f : %f",f);
$display("\n a:%f \n b:%f \n c:%f \n d:%f \n e:%f ",a,b,c,d,e);
end
endmodule
