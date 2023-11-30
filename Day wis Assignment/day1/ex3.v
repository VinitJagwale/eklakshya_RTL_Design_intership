module eve;
integer i;
initial begin
for( i=0;i<20;i=i+1)
begin 
 if(i%2==0)
 begin
  $display($time," %d",i);
  #5;
 end
end
$finish;
end
endmodule

