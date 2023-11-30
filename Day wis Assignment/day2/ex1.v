//two reg variables one uninitialized and other initialized
module ex1;
reg R ,R1;
initial R=0;
initial begin
$display("\n initialized reg : %b & uninitialied reg : %b \n",R,R1);
end
endmodule
