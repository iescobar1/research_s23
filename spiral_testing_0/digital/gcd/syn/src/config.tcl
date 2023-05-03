# GENUS SYNTHESIS FLOW - CONFIGURATION FILE
#----------------------------------------------------

# Top module name - must match the top-level in your SV exactly
set TOP dft_top
# Directory where HDL source is found
set SOURCE_PATH "../../rtl/insert_test"
# List of HDL source files to include in synthesis
set SOURCES {chip.v}
# sdc file with path relative to runGenus.py
set SDC ../src/chip.sdc
# vcd file from simulation for power report
set VCD ../../sim/insert_test.vcd
