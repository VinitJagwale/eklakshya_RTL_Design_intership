//-------------------------------Test Bench------------------------------------//
module tb;
  reg [7:0] a,b;
  wire [15:0] z;
  vm8bit v1(a,b,z);
  initial begin
    $display("\t\t\t  A     B      Ans");
    $monitor($time,"    %d   %d   %d",a,b,z);
    #0  a=8'd7; b=8'd3;
    #10 a=8'd3; b=8'd3;
    #10 a=8'd8; b=8'd7;
    #10 a=8'd5; b=8'd10;
  end 
endmodule
