
################################################################
# This is a generated script based on design: design_dds
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_dds_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# carrier_scale, envelope_16b

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-2
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_dds

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: Modulator
proc create_hier_cell_Modulator { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_Modulator() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -type clk aclk_0
  create_bd_pin -dir I -type rst rst_n
  create_bd_pin -dir O -from 15 -to 0 -type data sin_1K
  create_bd_pin -dir O -from 15 -to 0 -type data sin_1M
  create_bd_pin -dir O -from 31 -to 0 -type data sin_modu

  # Create instance: carrier_scale_0, and set properties
  set block_name carrier_scale
  set block_cell_name carrier_scale_0
  if { [catch {set carrier_scale_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $carrier_scale_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: dds_compiler_0, and set properties
  set dds_compiler_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:dds_compiler:6.0 dds_compiler_0 ]
  set_property -dict [ list \
   CONFIG.Frequency_Resolution {200} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Has_Phase_Out {false} \
   CONFIG.Has_TREADY {false} \
   CONFIG.Latency {8} \
   CONFIG.M_DATA_Has_TUSER {Not_Required} \
   CONFIG.Noise_Shaping {Auto} \
   CONFIG.Output_Frequency1 {1} \
   CONFIG.Output_Selection {Sine} \
   CONFIG.Output_Width {16} \
   CONFIG.PINC1 {1010001111010} \
   CONFIG.Phase_Width {19} \
   CONFIG.Spurious_Free_Dynamic_Range {96} \
 ] $dds_compiler_0

  # Create instance: dds_compiler_1, and set properties
  set dds_compiler_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:dds_compiler:6.0 dds_compiler_1 ]
  set_property -dict [ list \
   CONFIG.Frequency_Resolution {200} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Has_Phase_Out {false} \
   CONFIG.Has_TREADY {false} \
   CONFIG.Latency {8} \
   CONFIG.M_DATA_Has_TUSER {Not_Required} \
   CONFIG.Noise_Shaping {Auto} \
   CONFIG.Output_Frequency1 {0.001} \
   CONFIG.Output_Selection {Sine} \
   CONFIG.Output_Width {16} \
   CONFIG.PINC1 {101} \
   CONFIG.Phase_Width {19} \
   CONFIG.Spurious_Free_Dynamic_Range {96} \
 ] $dds_compiler_1

  # Create instance: envelope_16b_0, and set properties
  set block_name envelope_16b
  set block_cell_name envelope_16b_0
  if { [catch {set envelope_16b_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $envelope_16b_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mult_gen_0, and set properties
  set mult_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 mult_gen_0 ]
  set_property -dict [ list \
   CONFIG.PortAType {Signed} \
   CONFIG.PortAWidth {16} \
   CONFIG.PortBType {Signed} \
   CONFIG.PortBWidth {16} \
   CONFIG.Use_Custom_Output_Width {false} \
 ] $mult_gen_0

  # Create port connections
  connect_bd_net -net aclk_0_1 [get_bd_pins aclk_0] [get_bd_pins carrier_scale_0/clk] [get_bd_pins dds_compiler_0/aclk] [get_bd_pins dds_compiler_1/aclk] [get_bd_pins envelope_16b_0/clk] [get_bd_pins mult_gen_0/CLK]
  connect_bd_net -net carrier_scale_0_dout [get_bd_pins sin_1M] [get_bd_pins carrier_scale_0/dout] [get_bd_pins mult_gen_0/A]
  connect_bd_net -net dds_compiler_0_m_axis_data_tdata [get_bd_pins dds_compiler_1/m_axis_data_tdata] [get_bd_pins envelope_16b_0/msg]
  connect_bd_net -net dds_compiler_0_m_axis_data_tvalid [get_bd_pins carrier_scale_0/tvalid] [get_bd_pins dds_compiler_0/m_axis_data_tvalid]
  connect_bd_net -net dds_compiler_1_m_axis_data_tdata [get_bd_pins carrier_scale_0/din] [get_bd_pins dds_compiler_0/m_axis_data_tdata]
  connect_bd_net -net dds_compiler_1_m_axis_data_tvalid [get_bd_pins dds_compiler_1/m_axis_data_tvalid] [get_bd_pins envelope_16b_0/tvalid]
  connect_bd_net -net envelope_16b_0_env [get_bd_pins sin_1K] [get_bd_pins envelope_16b_0/env] [get_bd_pins mult_gen_0/B]
  connect_bd_net -net mult_gen_0_P [get_bd_pins sin_modu] [get_bd_pins mult_gen_0/P]
  connect_bd_net -net rst_n_1 [get_bd_pins rst_n] [get_bd_pins dds_compiler_0/aresetn] [get_bd_pins dds_compiler_1/aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set AM_out [ create_bd_port -dir O -from 15 -to 0 AM_out ]
  set aclk_0 [ create_bd_port -dir I -type clk -freq_hz 100000000 aclk_0 ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {rst_n} \
 ] $aclk_0
  set rst_n [ create_bd_port -dir I -type rst rst_n ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $rst_n
  set sin_1K [ create_bd_port -dir O -from 15 -to 0 sin_1K ]
  set sin_1M [ create_bd_port -dir O -from 15 -to 0 sin_1M ]
  set sin_modu [ create_bd_port -dir O -from 31 -to 0 -type data sin_modu ]

  # Create instance: Modulator
  create_hier_cell_Modulator [current_bd_instance .] Modulator

  # Create instance: dds_compiler_0, and set properties
  set dds_compiler_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:dds_compiler:6.0 dds_compiler_0 ]
  set_property -dict [ list \
   CONFIG.Frequency_Resolution {200} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Has_Phase_Out {false} \
   CONFIG.Has_TREADY {false} \
   CONFIG.Latency {8} \
   CONFIG.M_DATA_Has_TUSER {Not_Required} \
   CONFIG.Noise_Shaping {Auto} \
   CONFIG.Output_Frequency1 {1} \
   CONFIG.Output_Selection {Cosine} \
   CONFIG.Output_Width {16} \
   CONFIG.PINC1 {1010001111010} \
   CONFIG.Phase_Width {19} \
   CONFIG.Spurious_Free_Dynamic_Range {96} \
 ] $dds_compiler_0

  # Create instance: fir_compiler_0, and set properties
  set fir_compiler_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fir_compiler:7.2 fir_compiler_0 ]
  set_property -dict [ list \
   CONFIG.Clock_Frequency {100} \
   CONFIG.CoefficientSource {COE_File} \
   CONFIG.Coefficient_File {../../../../../../am_coherent_fir.coe} \
   CONFIG.Coefficient_Fractional_Bits {0} \
   CONFIG.Coefficient_Sets {1} \
   CONFIG.Coefficient_Sign {Signed} \
   CONFIG.Coefficient_Structure {Inferred} \
   CONFIG.Coefficient_Width {18} \
   CONFIG.ColumnConfig {49} \
   CONFIG.Data_Fractional_Bits {0} \
   CONFIG.Data_Width {32} \
   CONFIG.Filter_Architecture {Systolic_Multiply_Accumulate} \
   CONFIG.Has_ARESETn {true} \
   CONFIG.Output_Rounding_Mode {Full_Precision} \
   CONFIG.Output_Width {50} \
   CONFIG.Quantization {Integer_Coefficients} \
   CONFIG.Sample_Frequency {100} \
 ] $fir_compiler_0

  # Create instance: mult_gen_0, and set properties
  set mult_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mult_gen:12.0 mult_gen_0 ]
  set_property -dict [ list \
   CONFIG.OutputWidthHigh {31} \
   CONFIG.PortAWidth {16} \
   CONFIG.PortBWidth {16} \
 ] $mult_gen_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {55} \
   CONFIG.DIN_TO {40} \
   CONFIG.DIN_WIDTH {56} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {16} \
   CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_1

  # Create port connections
  connect_bd_net -net aclk_0_1 [get_bd_ports aclk_0] [get_bd_pins Modulator/aclk_0] [get_bd_pins dds_compiler_0/aclk] [get_bd_pins fir_compiler_0/aclk] [get_bd_pins mult_gen_0/CLK]
  connect_bd_net -net carrier_scale_0_dout [get_bd_ports sin_1M] [get_bd_pins Modulator/sin_1M]
  connect_bd_net -net dds_compiler_0_m_axis_data_tdata [get_bd_pins dds_compiler_0/m_axis_data_tdata] [get_bd_pins mult_gen_0/A]
  connect_bd_net -net envelope_16b_0_env [get_bd_ports sin_1K] [get_bd_pins Modulator/sin_1K]
  connect_bd_net -net fir_compiler_0_m_axis_data_tdata [get_bd_pins fir_compiler_0/m_axis_data_tdata] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net mult_gen_0_P [get_bd_ports sin_modu] [get_bd_pins Modulator/sin_modu] [get_bd_pins xlslice_1/Din]
  connect_bd_net -net mult_gen_0_P1 [get_bd_pins fir_compiler_0/s_axis_data_tdata] [get_bd_pins mult_gen_0/P]
  connect_bd_net -net rst_n_1 [get_bd_ports rst_n] [get_bd_pins Modulator/rst_n] [get_bd_pins dds_compiler_0/aresetn]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins fir_compiler_0/s_axis_data_tvalid] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_ports AM_out] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins mult_gen_0/B] [get_bd_pins xlslice_1/Dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


