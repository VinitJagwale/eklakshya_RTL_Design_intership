//two wire variables one uninitialized and other initialized
module ex2;
wire R=1;
wire R1;

initial begin
$monitor("\n initialized wire : %b & uninitialied wire : %b \n",R,R1);
end
endmodule
