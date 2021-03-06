//instruction ROM
// For demonstration purposes, this one has
// 128 entries (7 bit address, supplied by 7-bit
// PC) and of course has 8-bit output.
// You should put your real insts in it, but this one sets the values to the same
// as the address, so you can easily confirm that you are reading address 43
// because the output is 43.
module instROM (
  input[6:0] address_i,
  output[7:0] data_o
  );
 
always @(*)
  begin
    case (address_i)
      0 : data_o = 8'h00; // or whatever your first inst is
      1 : data_o = 8'h01; // or whatever your second inst is
      2 : data_o = 8'h02;
      3 : data_o = 8'h03;
      //and so on -- fill in the rest.
      default: data_o = 8'hff; // don’t forget this!
    endcase
  end
endmodule
 