// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Tue Jul 29 09:49:02 2025
// Host        : FXT333 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/ASUS-PC/Desktop/temporary/FMCW_module_control/FMCW_module_control.gen/sources_1/bd/system/ip/system_ps_pl_axi4_0_0/system_ps_pl_axi4_0_0_stub.v
// Design      : system_ps_pl_axi4_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ps_pl_axi4_v1_0,Vivado 2021.1" *)
module system_ps_pl_axi4_0_0(rx_cmd, rx_cmd_valid, tx_cmd, tx_cmd_valid, 
  rx_data_valid, rx_data_last, rx_data_data, tx_data_valid, tx_data_last, tx_data_data, 
  s00_axi_aclk, s00_axi_aresetn, s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, 
  s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, 
  s00_axi_bresp, s00_axi_bvalid, s00_axi_bready, s00_axi_araddr, s00_axi_arprot, 
  s00_axi_arvalid, s00_axi_arready, s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, 
  s00_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="rx_cmd[15:0],rx_cmd_valid,tx_cmd[15:0],tx_cmd_valid,rx_data_valid,rx_data_last,rx_data_data[7:0],tx_data_valid,tx_data_last,tx_data_data[7:0],s00_axi_aclk,s00_axi_aresetn,s00_axi_awaddr[6:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[6:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready" */;
  output [15:0]rx_cmd;
  output rx_cmd_valid;
  input [15:0]tx_cmd;
  input tx_cmd_valid;
  output rx_data_valid;
  output rx_data_last;
  output [7:0]rx_data_data;
  input tx_data_valid;
  input tx_data_last;
  input [7:0]tx_data_data;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [6:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [6:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
endmodule
