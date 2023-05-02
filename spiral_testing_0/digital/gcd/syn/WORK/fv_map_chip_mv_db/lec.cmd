REAd IMplementation Information fv/chip -golden fv_map -revised chip_mv
SET PARAllel Option -threads 4 -norelease_license
SET COmpare Options -threads 4
SET UNDEfined Cell black_box -noascend -both
ADD SEarch Path . -library -both
REAd LIbrary -liberty -both /afs/ece/user/iescobar/gpdk045/libs/gsclib045_svt_v4.4/gsclib045/timing/slow_vdd1v0_basicCells.lib\
   /afs/ece/user/iescobar/gpdk045/libs/giolib045_v3.2/giolib045/lib/giolib045.lib /afs/ece/user/iescobar/gpdk045/libs/gsclib045_svt_v4.4/gsclib045/timing/slow_vdd1v0_basicCells.lib\
   /afs/ece/user/iescobar/gpdk045/libs/giolib045_v3.2/giolib045/lib/giolib045.lib
REAd DEsign -verilog95 -golden -lastmod -noelab fv/chip/fv_map.v.gz
ELAborate DEsign -golden -root chip
REAd DEsign -verilog95 -revised -lastmod -noelab outputs/chip_m.v
ELAborate DEsign -revised -root chip
REPort DEsign Data
REPort BLack Box
SET FLatten Model -seq_constant
SET FLatten Model -seq_constant_x_to 0
SET FLatten Model -nodff_to_dlat_zero
SET FLatten Model -nodff_to_dlat_feedback
SET FLatten Model -hier_seq_merge
SET ANalyze Option -auto
SET SYstem Mode lec
REPort UNmapped Points -summary
REPort UNmapped Points -notmapped
ADD COmpared Points -all
COMpare
REPort COmpare Data -class nonequivalent -class abort -class notcompared
REPort VErification -verbose
REPort STatistics
WRIte VErification Information
REPort VErification Information
EXIt -f
