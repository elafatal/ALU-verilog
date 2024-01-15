module mux4bit(
  input [3:0] data0,
  input [3:0] data1,
  input [3:0] data2,
  input [3:0] data3,
  input s1,s2,
  output reg [3:0] out
);

wire [1:0] sel;
assign sel[0] = s1;
assign sel[1] = s2;

always @(*) begin
  case(sel)
    2'b00: out = data0;
    2'b01: out = data1;
    2'b10: out = data2;
    2'b11: out = data3;
    default: out = 4'b0; // Default value if none of the cases match
  endcase
end

endmodule