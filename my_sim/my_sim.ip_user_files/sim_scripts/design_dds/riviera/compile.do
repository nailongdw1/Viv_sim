vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xbip_utils_v3_0_10
vlib riviera/axi_utils_v2_0_6
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_16
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_dsp48_multadd_v3_0_6
vlib riviera/dds_compiler_v6_0_20
vlib riviera/fir_compiler_v7_2_15
vlib riviera/xlconstant_v1_1_7
vlib riviera/xlslice_v1_0_2

vmap xil_defaultlib riviera/xil_defaultlib
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 riviera/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_16 riviera/mult_gen_v12_0_16
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 riviera/xbip_dsp48_multadd_v3_0_6
vmap dds_compiler_v6_0_20 riviera/dds_compiler_v6_0_20
vmap fir_compiler_v7_2_15 riviera/fir_compiler_v7_2_15
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7
vmap xlslice_v1_0_2 riviera/xlslice_v1_0_2

vlog -work xil_defaultlib  -v2k5 \
"../../../../mySim.gen/sources_1/bd/design_dds/ip/design_dds_envelope_16b_0_0/sim/design_dds_envelope_16b_0_0.v" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../my_sim.gen/sources_1/bd/design_dds/ipshared/d117/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../my_sim.gen/sources_1/bd/design_dds/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../my_sim.gen/sources_1/bd/design_dds/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../../my_sim.gen/sources_1/bd/design_dds/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_16 -93 \
"../../../../my_sim.gen/sources_1/bd/design_dds/ipshared/ce84/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../my_sim.gen/sources_1/bd/design_dds/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../my_sim.gen/sources_1/bd/design_dds/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93 \
"../../../../my_sim.gen/sources_1/bd/design_dds/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work dds_compiler_v6_0_20 -93 \
"../../../../my_sim.gen/sources_1/bd/design_dds/ipshared/398e/hdl/dds_compiler_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../mySim.gen/sources_1/bd/design_dds/ip/design_dds_dds_compiler_0_0/sim/design_dds_dds_compiler_0_0.vhd" \
"../../../../mySim.gen/sources_1/bd/design_dds/ip/design_dds_dds_compiler_1_0/sim/design_dds_dds_compiler_1_0.vhd" \
"../../../../mySim.gen/sources_1/bd/design_dds/ip/design_dds_mult_gen_0_0/sim/design_dds_mult_gen_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../mySim.gen/sources_1/bd/design_dds/ip/design_dds_carrier_scale_0_0/sim/design_dds_carrier_scale_0_0.v" \

vcom -work fir_compiler_v7_2_15 -93 \
"../../../../my_sim.gen/sources_1/bd/design_dds/ipshared/9825/hdl/fir_compiler_v7_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../mySim.gen/sources_1/bd/design_dds/ip/design_dds_fir_compiler_0_2/sim/design_dds_fir_compiler_0_2.vhd" \

vlog -work xlconstant_v1_1_7  -v2k5 \
"../../../../my_sim.gen/sources_1/bd/design_dds/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../mySim.gen/sources_1/bd/design_dds/ip/design_dds_xlconstant_0_0/sim/design_dds_xlconstant_0_0.v" \

vlog -work xlslice_v1_0_2  -v2k5 \
"../../../../my_sim.gen/sources_1/bd/design_dds/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../mySim.gen/sources_1/bd/design_dds/ip/design_dds_xlslice_0_0/sim/design_dds_xlslice_0_0.v" \
"../../../../mySim.gen/sources_1/bd/design_dds/ip/design_dds_xlslice_1_1/sim/design_dds_xlslice_1_1.v" \

vcom -work xil_defaultlib -93 \
"../../../../mySim.gen/sources_1/bd/design_dds/ip/design_dds_mult_gen_0_3/sim/design_dds_mult_gen_0_3.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../mySim.gen/sources_1/bd/design_dds/sim/design_dds.v" \

vlog -work xil_defaultlib \
"glbl.v"

