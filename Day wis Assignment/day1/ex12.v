/*print the odd no.s of unit 10 in an integer and real*/
module ex12;
integer i;
initial begin
  $display("     Integer  Real");
for( i=0;i<10;i=i+1)
begin 
 if(i%2!=0)
 begin
  $display("%d  %f",i,i);
  #5;
 end
end
$finish;
end
endmodule

