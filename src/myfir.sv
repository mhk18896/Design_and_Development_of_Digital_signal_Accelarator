/////////////////////////////////////////////////////////////////////////////////
//Author: Muhammad Hamza Khan
//Module description: FIR filter
//
//
//
//
//
///////////////////////////////////////////////////////////////////////////////
module myfir #(
    parameter ORDER = 8,
    parameter DATA_WIDTH = 13)(
    input logic CLK,
    input logic RST_n,
    input logic VIN,
    input logic  signed [DATA_WIDTH-1:0] DIN,
    input logic  signed [DATA_WIDTH-1:0] H0,
    input logic  signed [DATA_WIDTH-1:0] H1,
    input logic  signed [DATA_WIDTH-1:0] H2,
    input logic  signed [DATA_WIDTH-1:0] H3,
    input logic  signed [DATA_WIDTH-1:0] H4,
    input logic  signed [DATA_WIDTH-1:0] H5,
    input logic  signed [DATA_WIDTH-1:0] H6,
    input logic  signed [DATA_WIDTH-1:0] H7,
    input logic  signed [DATA_WIDTH-1:0] H8,
    output logic signed [DATA_WIDTH-1:0] DOUT,
    output logic VOUT
); 


logic signed [DATA_WIDTH-1:0] tp_w[0:ORDER];
logic signed [DATA_WIDTH-1:0] H[0:ORDER];
assign H[0] = H0;
assign H[1] = H1;
assign H[2] = H2;
assign H[3] = H3;
assign H[4] = H4;
assign H[5] = H5;
assign H[6] = H6;
assign H[7] = H7;
assign H[8] = H8;


tdl_u #(
    .DATA_WIDTH (DATA_WIDTH),
    .ORDER (ORDER)
) TDL_U (
    .CLK(CLK),
    .RST_n(RST_n),
    .VIN(VIN),
    .DIN(DIN),
    .tp(tp_w)
);

mac_u #(
    .DATA_WIDTH(DATA_WIDTH),
    .ORDER(ORDER)
) MAC_U (
    .CLK(CLK),
    .RST_n(RST_n),
    .tp_w(tp_w),
    .H(H),
    .DOUT(DOUT),
    .VOUT(VOUT)
);
endmodule