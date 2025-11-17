/////////////////////////////////////////////////////////////////////////////////
//
//
//
//
//
//
//
///////////////////////////////////////////////////////////////////////////////
module myfir (
    input logic clk,
    input logic RST_n,
    input logic Vin,
    output logic Vout,
    input logic  signed [12:0] Din,
    input logic  signed [12:0] H0,
    input logic  signed [12:0] H1,
    input logic  signed [12:0] H2,
    input logic  signed [12:0] H3,
    input logic  signed [12:0] H4,
    input logic  signed [12:0] H5,
    input logic  signed [12:0] H6,
    input logic  signed [12:0] H7,
    output logic signed [12:0] Dout
);

