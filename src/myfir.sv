/////////////////////////////////////////////////////////////////////////////////
//Author: Muhammad Hamza Khan
//Module description: FIR filter  
//
//
//
//
//
///////////////////////////////////////////////////////////////////////////////
module myfir (
    input logic CLK,
    input logic RST_n,
    input logic VIN,
    input logic  signed [12:0] DIN,
    input logic  signed [12:0] H0,
    input logic  signed [12:0] H1,
    input logic  signed [12:0] H2,
    input logic  signed [12:0] H3,
    input logic  signed [12:0] H4,
    input logic  signed [12:0] H5,
    input logic  signed [12:0] H6,
    input logic  signed [12:0] H7,
    output logic signed [12:0] DOUT,
    output logic VOUT
); 

logic signed [12:0] tp_w[0:7];
logic signed [12:0] H[00:7];
assign H[0] = H0;
assign H[1] = H1;
assign H[2] = H2;
assign H[3] = H3;
assign H[4] = H4;
assign H[5] = H5;
assign H[6] = H6;
assign H[7] = H7;


tdl_u TDL_U (
    .CLK(CLK),
    .RST_n(RST_n),
    .VIN(VIN),
    .DIN(DIN),
    .tp(tp_w)
);









endmodule