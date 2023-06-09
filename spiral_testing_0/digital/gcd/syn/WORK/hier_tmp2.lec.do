#==============================================================================
# Hierarchical dofile generated by Conformal LEC
# Version: 18.10-s300 (23-Aug-2018) (64 bit executable)
#------------------------------------------------------------------------------
# For additional reporting on 'not written' modules, see the 'VERBOSE REPORTING'
# section at the end of the hierarchical dofile
#------------------------------------------------------------------------------
# The command 'set module property' sets the instance context for the current
# root module. It is intended only for hierarchical comparison, and should
# not be modified by the user.
#------------------------------------------------------------------------------
# TERMS AND NOTATIONS USED
#------------------------------------------------------------------------------
# Module Instantiation Ratio: Average number of instantiations per matching module
# Periphery size: #Logic gates in the fanin and fanout cone of instance's input and output boundary, and bounded by key-points
# 0: Indicates pin is constant zero
# 1: Indicates pin is constant one
# X: Indicates pin is full DC
# U: Indicates pin is unreachable
# Z: Indicates pin is floating
# KP<--: Indicates pin's fanin is directly connected to key-point (ignores buffers/inverters)
# -->KP: Indicates pin's fanout is directly connected to key-point (ignores buffers/inverters)
# REP: Indicates pin is representative pin
# EQ_REP: <polarity> rep_pinname>: Indicates pin is a member EQ pin with
# 'rep_pinname' specifying the representative, and 'polarity' specifying
# if it is positive or negative equivalent
# = : Indicates that the pins on LHS and RHS are mapped
# + : Indicates positive polarity for pin mapping
# - : Indicates negative polarity for pin mapping
# ? : Indicates unknown polarity for pin mapping
# G: Indicates that the pin belongs to Golden
# R: Indicates that the pin belongs to Revised
# IN: Indicates that the pin is an Input pin
# OUT: Indicates that the pin is an Output pin
# IO: Indicates that the pin is an Inout pin. Polarity of Inout pin is
#     always '?' because of name-only mapping
#==============================================================================

set_system_mode setup
# Comparing
#-------------------------------------------------------------------------------
# MODULE datapath_WL8 (G) INSTANCE /inst_datapath (G)
# MODULE datapath_WL8 (R) INSTANCE /inst_datapath (R)
#-------------------------------------------------------------------------------
# RESOLVED Constraints
# IN (G) clk (REP)  =   (R) clk (REP) (by sim and name)
# IN (G) rst_b (REP)  =   (R) rst_b (REP) (by sim and name)
# IN (G) op_a[7] (REP)  =   (R) op_a[7] (REP) (by sim and name)
# IN (G) op_a[6] (REP)  =   (R) op_a[6] (REP) (by sim and name)
# IN (G) op_a[5] (REP)  =   (R) op_a[5] (REP) (by sim and name)
# IN (G) op_a[4] (REP)  =   (R) op_a[4] (REP) (by sim and name)
# IN (G) op_a[3] (REP)  =   (R) op_a[3] (REP) (by sim and name)
# IN (G) op_a[2] (REP)  =   (R) op_a[2] (REP) (by sim and name)
# IN (G) op_a[1] (REP)  =   (R) op_a[1] (REP) (by sim and name)
# IN (G) op_a[0] (REP)  =   (R) op_a[0] (REP) (by sim and name)
# IN (G) op_b[7] (REP)  =   (R) op_b[7] (REP) (by sim and name)
# IN (G) op_b[6] (REP)  =   (R) op_b[6] (REP) (by sim and name)
# IN (G) op_b[5] (REP)  =   (R) op_b[5] (REP) (by sim and name)
# IN (G) op_b[4] (REP)  =   (R) op_b[4] (REP) (by sim and name)
# IN (G) op_b[3] (REP)  =   (R) op_b[3] (REP) (by sim and name)
# IN (G) op_b[2] (REP)  =   (R) op_b[2] (REP) (by sim and name)
# IN (G) op_b[1] (REP)  =   (R) op_b[1] (REP) (by sim and name)
# IN (G) op_b[0] (REP)  =   (R) op_b[0] (REP) (by sim and name)
# IN (G) cl2dp_ld (REP)  =   (R) cl2dp_ld (REP) (by sim and name)
# IN (G) cl2dp_en (REP)  =   (R) cl2dp_en (REP) (by sim and name)
# RESOLVED Constraints
# OUT (G) res[7] (REP)  =   (R) res[7] (REP) (by sim and name)
# OUT (G) res[6] (REP)  =   (R) res[6] (REP) (by sim and name)
# OUT (G) res[5] (REP)  =   (R) res[5] (REP) (by sim and name)
# OUT (G) res[4] (REP)  =   (R) res[4] (REP) (by sim and name)
# OUT (G) res[3] (REP)  =   (R) res[3] (REP) (by sim and name)
# OUT (G) res[2] (REP)  =   (R) res[2] (REP) (by sim and name)
# OUT (G) res[1] (REP)  =   (R) res[1] (REP) (by sim and name)
# OUT (G) res[0] (REP)  =   (R) res[0] (REP) (by sim and name)
# OUT (G) dp2cl_a_eq_b (REP)  =   (R) dp2cl_a_eq_b (REP) (by sim and name)
set_root_module datapath_WL8 -Golden
set_root_module datapath_WL8 -Revised
set_module_property -instance /inst_datapath -Golden
set_module_property -instance /inst_datapath -Revised
report_black_box -NOHidden
set_system_mode lec
 report_unmapped_points -notmapped; analyze_datapath -module -verbose ; analyze_datapath -share  -verbose; 
add_compared_points -all
compare
save_hier_compare_result
set_system_mode setup
add_black_box datapath_WL8 -module -hier -Golden
add_black_box datapath_WL8 -module -hier -Revised
usage
# Root Modules
# Comparing
#-------------------------------------------------------------------------------
# MODULE chip (G) INSTANCE / (G)
# MODULE chip (R) INSTANCE / (R)
#-------------------------------------------------------------------------------
# RESOLVED Constraints
# IN (G) clk (REP)  =   (R) clk (REP) (by name)
# IN (G) rst_b (REP)  =   (R) rst_b (REP) (by name)
# IN (G) op_a[7] (REP)  =   (R) op_a[7] (REP) (by name)
# IN (G) op_a[6] (REP)  =   (R) op_a[6] (REP) (by name)
# IN (G) op_a[5] (REP)  =   (R) op_a[5] (REP) (by name)
# IN (G) op_a[4] (REP)  =   (R) op_a[4] (REP) (by name)
# IN (G) op_a[3] (REP)  =   (R) op_a[3] (REP) (by name)
# IN (G) op_a[2] (REP)  =   (R) op_a[2] (REP) (by name)
# IN (G) op_a[1] (REP)  =   (R) op_a[1] (REP) (by name)
# IN (G) op_a[0] (REP)  =   (R) op_a[0] (REP) (by name)
# IN (G) op_b[7] (REP)  =   (R) op_b[7] (REP) (by name)
# IN (G) op_b[6] (REP)  =   (R) op_b[6] (REP) (by name)
# IN (G) op_b[5] (REP)  =   (R) op_b[5] (REP) (by name)
# IN (G) op_b[4] (REP)  =   (R) op_b[4] (REP) (by name)
# IN (G) op_b[3] (REP)  =   (R) op_b[3] (REP) (by name)
# IN (G) op_b[2] (REP)  =   (R) op_b[2] (REP) (by name)
# IN (G) op_b[1] (REP)  =   (R) op_b[1] (REP) (by name)
# IN (G) op_b[0] (REP)  =   (R) op_b[0] (REP) (by name)
# IN (G) ops_val (REP)  =   (R) ops_val (REP) (by name)
# IN (G) res_rdy (REP)  =   (R) res_rdy (REP) (by name)
# RESOLVED Constraints
# OUT (G) res[7] (REP)  =   (R) res[7] (REP) (by name)
# OUT (G) res[6] (REP)  =   (R) res[6] (REP) (by name)
# OUT (G) res[5] (REP)  =   (R) res[5] (REP) (by name)
# OUT (G) res[4] (REP)  =   (R) res[4] (REP) (by name)
# OUT (G) res[3] (REP)  =   (R) res[3] (REP) (by name)
# OUT (G) res[2] (REP)  =   (R) res[2] (REP) (by name)
# OUT (G) res[1] (REP)  =   (R) res[1] (REP) (by name)
# OUT (G) res[0] (REP)  =   (R) res[0] (REP) (by name)
# OUT (G) ops_rdy (REP)  =   (R) ops_rdy (REP) (by name)
# OUT (G) res_val (REP)  =   (R) res_val (REP) (by name)
set_root_module chip -Golden
set_root_module chip -Revised
set_module_property -instance / -Golden
set_module_property -instance / -Revised
report_black_box -NOHidden
set_system_mode lec
 report_unmapped_points -notmapped; analyze_datapath -module -verbose ; analyze_datapath -share  -verbose; 
add_compared_points -all
compare
save_hier_compare_result
set_system_mode setup
usage
report_hier_compare_result
report_hier_compare_result -Nonequivalent
report_hier_compare_result -Abort
report_hier_compare_result -Uncompared
#-------------------------------------------------------------------------------
# VERBOSE REPORTING
#-------------------------------------------------------------------------------
# The following module pairs are not written because of number of primitive
# instances less than 50:
# register_WL8, prim-cnt = 17 (G) and register_WL8, prim-cnt = 16 (R)
# register_WL8_181, prim-cnt = 17 (G) and register_WL8_181, prim-cnt = 16 (R)
# register_WL8_180, prim-cnt = 17 (G) and register_WL8_180, prim-cnt = 16 (R)
# control_WL8, prim-cnt = 45 (G) and control_WL8, prim-cnt = 21 (R)
# register_WL2, prim-cnt = 5 (G) and register_WL2, prim-cnt = 4 (R)
#-------------------------------------------------------------------------------
# _END_OF_LEC_HIERARCHICAL_DOFILE_
