vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_10
vlib activehdl/processing_system7_vip_v1_0_12
vlib activehdl/xil_defaultlib
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_2_5
vlib activehdl/lib_fifo_v1_0_14
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/axi_datamover_v5_1_26
vlib activehdl/axi_sg_v4_1_13
vlib activehdl/axi_dma_v7_1_25
vlib activehdl/xlconcat_v2_1_4
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_24
vlib activehdl/axi_data_fifo_v2_1_23
vlib activehdl/axi_crossbar_v2_1_25
vlib activehdl/axi_protocol_converter_v2_1_24
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/axi_clock_converter_v2_1_23
vlib activehdl/blk_mem_gen_v8_4_4
vlib activehdl/axi_dwidth_converter_v2_1_24
vlib activehdl/axis_infrastructure_v1_1_0
vlib activehdl/axis_data_fifo_v2_0_6

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_10 activehdl/axi_vip_v1_1_10
vmap processing_system7_vip_v1_0_12 activehdl/processing_system7_vip_v1_0_12
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_5 activehdl/fifo_generator_v13_2_5
vmap lib_fifo_v1_0_14 activehdl/lib_fifo_v1_0_14
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_26 activehdl/axi_datamover_v5_1_26
vmap axi_sg_v4_1_13 activehdl/axi_sg_v4_1_13
vmap axi_dma_v7_1_25 activehdl/axi_dma_v7_1_25
vmap xlconcat_v2_1_4 activehdl/xlconcat_v2_1_4
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_24 activehdl/axi_register_slice_v2_1_24
vmap axi_data_fifo_v2_1_23 activehdl/axi_data_fifo_v2_1_23
vmap axi_crossbar_v2_1_25 activehdl/axi_crossbar_v2_1_25
vmap axi_protocol_converter_v2_1_24 activehdl/axi_protocol_converter_v2_1_24
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap axi_clock_converter_v2_1_23 activehdl/axi_clock_converter_v2_1_23
vmap blk_mem_gen_v8_4_4 activehdl/blk_mem_gen_v8_4_4
vmap axi_dwidth_converter_v2_1_24 activehdl/axi_dwidth_converter_v2_1_24
vmap axis_infrastructure_v1_1_0 activehdl/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v2_0_6 activehdl/axis_data_fifo_v2_0_6

vlog -work xilinx_vip  -sv2k12 "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"E:/Xilinx2021/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/Xilinx2021/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/Xilinx2021/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_10  -sv2k12 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/0980/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_12  -sv2k12 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_14 -93 \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_26 -93 \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/1e21/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_13 -93 \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/4919/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_25 -93 \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/1faa/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_axi_dma_0_0/sim/system_axi_dma_0_0.vhd" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xlconcat_0_0/sim/system_xlconcat_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_24  -v2k5 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8f68/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_23  -v2k5 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/94ec/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_25  -v2k5 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/3917/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_1/sim/system_xbar_1.v" \

vlog -work axi_protocol_converter_v2_1_24  -v2k5 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_pc_0/sim/system_auto_pc_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ip/system_rst_ps7_0_100M_0/sim/system_rst_ps7_0_100M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \

vlog -work axi_clock_converter_v2_1_23  -v2k5 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/7ee4/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_24  -v2k5 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/3d13/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_us_0/sim/system_auto_us_0.v" \
"../../../bd/system/ip/system_auto_pc_1/sim/system_auto_pc_1.v" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_6  -v2k5 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/dc71/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/f42d/hdl" "+incdir+../../../../FMCW_module_control.gen/sources_1/bd/system/ipshared/8713/hdl" "+incdir+E:/Xilinx2021/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axis_data_fifo_0_2/sim/system_axis_data_fifo_0_2.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/system/ipshared/887e/hdl/axi4_2_gmii.vhd" \
"../../../bd/system/ipshared/887e/hdl/ps_pl_axi4_v1_0_S00_AXI.vhd" \
"../../../bd/system/ipshared/887e/hdl/ps_pl_axi4_v1_0.vhd" \
"../../../bd/system/ip/system_ps_pl_axi4_0_0/sim/system_ps_pl_axi4_0_0.vhd" \
"../../../bd/system/ip/system_Sim_ad_data_gen_0_0/sim/system_Sim_ad_data_gen_0_0.vhd" \
"../../../bd/system/sim/system.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

