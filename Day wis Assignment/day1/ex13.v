//print the fuction in integer where variables are real
module ex13;
real a=2.4,b=6.1,c=4.5,d=2.1,e=8.5;
integer f;
initial begin
assign f=a-(b*c)+(d-e);
$display("\nResult  :  %f\n",f);
end
endmodule

