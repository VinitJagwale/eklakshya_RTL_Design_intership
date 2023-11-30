//8:3 encoder
module enc(input[7:0]i,output[2:0]y);
assign y[0]=i[1]|i[3]|i[5]|i[7];
assign y[1]=i[2]|i[3]|i[6]|i[7];
assign y[2]=i[4]|i[5]|i[6]|i[7];
endmodule

module tb;
reg [7:0]i;
wire [3:0]y;
enc f1(i,y);
initial begin
$monitor($time," i=%b,y=%b ",i,y);
#5 i=8'b00000001;
#5 i=8'b00000010;
#5 i=8'b00000100;
#5 i=8'b00001000;
#5 i=8'b00010000;
#5 i=8'b00100000;
#5 i=8'b01000000;
#5 i=8'b10000000;
end 
endmodule
