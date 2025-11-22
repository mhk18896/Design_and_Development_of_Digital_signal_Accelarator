module data_maker #(
  parameter DATA_WIDTH = 13;
  parameter TAPS = 8;
) ( 
input logic CLK,
input logic RST_n,
output logic VOUT,
output logic signed [DATA_WIDTH-1:0] DOUT,
output logic signed [DATA_WIDTH-1:0] H[0:TAPS],
outptut logic END_SIM
);
// Coefficients for FIR Filter
local parameter logic signed [DATA_WIDTH-1:0] H_COEFF[0:TAPS] = '{
  13'sd-26, 
  13'sd-56,
  13'sd209,
  13'sd1088,
  13'sd1661,
  13'sd1088,
  13'sd209,
  13'sd-56,
  13'sd-26
};
// Assign coefficients to output
assign H = H_COEFF;

//file handling 
int fd_f;// file descritor
logic signed [DATA_WIDTH-1:0] data_reg;
int data_in_int;









// File handling
initial begin
  fd_f = $fopen("./samples.txt", "r");
  if(fd_f == 0) begin
  $display("Failed to open the file : %0d", fd_f);
  end
end



always_ff(posedge CLK or negdge RST_n) begin
if(!RST_n) begin
  VOUT <= 1'b0;
  DOUT <= '0;
  END_SIM <= 1'b0;
 end else begin

end 

endmodule



