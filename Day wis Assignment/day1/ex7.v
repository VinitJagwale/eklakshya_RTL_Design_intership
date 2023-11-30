//use signed value to print f

module ex7;
integer a,b,c,d,e,f;
initial begin
 a=$random()%10;
 b=$random()%10;
 c=$random()%10;
 d=$random()%10;
 e=$random()%10;
 f=a*b+(c+d)-e;
$display("f : %d",f);
$display("\n a:%d \n b:%d \n c:%d \n d:%d \n e:%d ",a,b,c,d,e);
end
endmodule
