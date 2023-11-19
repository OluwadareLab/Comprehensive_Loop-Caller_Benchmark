#!/bin/bash

exec > ctcf_recovery_raw.log 2>&1
echo "generating ctcf recovery for rawdata"

#LASCA
echo "generating lasca plots"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr1.txt --InpFile=/storage/store/mohit/data/lasca/GM12878_chr1_5k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=raw/lasca.chr1_5k --LabelRef="CTCF" --LabelInp="LASCA"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr1.txt --InpFile=/storage/store/mohit/data/lasca/GM12878_chr1_10k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=raw/lasca.chr1_10k --LabelRef="CTCF" --LabelInp="LASCA"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr6.txt --InpFile=/storage/store/mohit/data/lasca/GM12878_chr6_5k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=raw/lasca.chr6_5k --LabelRef="CTCF" --LabelInp="LASCA"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr6.txt --InpFile=/storage/store/mohit/data/lasca/GM12878_chr6_10k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=raw/lasca.chr6_10k --LabelRef="CTCF" --LabelInp="LASCA"
echo "ending lasca plots"


#HiCExplorer
echo "generating hicexplorer plots"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr1.txt --InpFile=/storage/store/mohit/data/hicexplorer/GM12878_chr1_5k.bedgraph --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=raw/hicexplorer.chr1_5k --LabelRef="CTCF" --LabelInp="HiCExplorer" &
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr1.txt --InpFile=/storage/store/mohit/data/hicexplorer/GM12878_chr1_10k.bedgraph --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=raw/hicexplorer.chr1_10k --LabelRef="CTCF" --LabelInp="HiCExplorer" &
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr6.txt --InpFile=/storage/store/mohit/data/hicexplorer/GM12878_chr6_5k.bedgraph --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=raw/hicexplorer.chr6_5k --LabelRef="CTCF" --LabelInp="HiCExplorer" &
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr6.txt --InpFile=/storage/store/mohit/data/hicexplorer/GM12878_chr6_10k.bedgraph --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=raw/hicexplorer.chr6_10k --LabelRef="CTCF" --LabelInp="HiCExplorer" &
wait
echo "ending hicexplorer plots"


#FitHiC
echo "generating FitHiC plots"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr1.txt --InpFile=/storage/store/mohit/data/fithic/GM12878_chr1_5k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=raw/fithic.chr1_5k --LabelRef="CTCF" --LabelInp="FitHiC"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr1.txt --InpFile=/storage/store/mohit/data/fithic/GM12878_chr1_10k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=raw/fithic.chr1_10k --LabelRef="CTCF" --LabelInp="FitHiC"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr6.txt --InpFile=/storage/store/mohit/data/fithic/GM12878_chr6_5k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=raw/fithic.chr6_5k --LabelRef="CTCF" --LabelInp="FitHiC"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr6.txt --InpFile=/storage/store/mohit/data/fithic/GM12878_chr6_10k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=raw/fithic.chr6_10k --LabelRef="CTCF" --LabelInp="FitHiC"
echo "ending FitHiC plots"


#FitHiChIP
echo "generating FitHiChIP plots"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr1.txt --InpFile=/storage/store/mohit/data/FitHiChIP/GM12878_chr1_5k.bed --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=raw/FitHiChIP.chr1_5k --LabelRef="CTCF" --LabelInp="FitHiChIP"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr1.txt --InpFile=/storage/store/mohit/data/FitHiChIP/GM12878_chr1_10k.bed --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=raw/FitHiChIP.chr1_10k --LabelRef="CTCF" --LabelInp="FitHiChIP"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr6.txt --InpFile=/storage/store/mohit/data/FitHiChIP/GM12878_chr6_5k.bed --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=raw/FitHiChIP.chr6_5k --LabelRef="CTCF" --LabelInp="FitHiChIP"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr6.txt --InpFile=/storage/store/mohit/data/FitHiChIP/GM12878_chr6_10k.bed --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=raw/FitHiChIP.chr6_10k --LabelRef="CTCF" --LabelInp="FitHiChIP"
echo "ending FitHiChIP plots"


#Peakachu
echo "generating peakachu plots"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr1.txt --InpFile=/storage/store/mohit/data/peakachu/GM12878_chr1_5k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=raw/peakachu.chr1_5k --LabelRef="CTCF" --LabelInp="Peakachu"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr1.txt --InpFile=/storage/store/mohit/data/peakachu/GM12878_chr1_10k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=raw/peakachu.chr1_10k --LabelRef="CTCF" --LabelInp="Peakachu"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr6.txt --InpFile=/storage/store/mohit/data/peakachu/GM12878_chr6_5k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=raw/peakachu.chr6_5k --LabelRef="CTCF" --LabelInp="Peakachu"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr6.txt --InpFile=/storage/store/mohit/data/peakachu/GM12878_chr6_10k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=raw/peakachu.chr6_10k --LabelRef="CTCF" --LabelInp="Peakachu"
echo "ending peakachu plots"


#Mustache
echo "generating mustache plots"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr1.txt --InpFile=/storage/store/mohit/data/mustache/GM12878_chr1_5k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=raw/mustache.chr1_5k --LabelRef="CTCF" --LabelInp="Mustache"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr1.txt --InpFile=/storage/store/mohit/data/mustache/GM12878_chr1_10k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=raw/mustache.chr1_10k --LabelRef="CTCF" --LabelInp="Mustache"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr6.txt --InpFile=/storage/store/mohit/data/mustache/GM12878_chr6_5k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=raw/mustache.chr6_5k --LabelRef="CTCF" --LabelInp="Mustache"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr6.txt --InpFile=/storage/store/mohit/data/mustache/GM12878_chr6_10k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=raw/mustache.chr6_10k --LabelRef="CTCF" --LabelInp="Mustache"
echo "ending mustache plots"


#Chromosight
echo "generating chromosight plots"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr1.txt --InpFile=/storage/store/mohit/data/chromosight/GM12878_chr1_5k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=raw/chromosight.chr1_5k --LabelRef="CTCF" --LabelInp="Chromosight"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr1.txt --InpFile=/storage/store/mohit/data/chromosight/GM12878_chr1_10k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=raw/chromosight.chr1_10k --LabelRef="CTCF" --LabelInp="Chromosight"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr6.txt --InpFile=/storage/store/mohit/data/chromosight/GM12878_chr6_5k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=raw/chromosight.chr6_5k --LabelRef="CTCF" --LabelInp="Chromosight"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr6.txt --InpFile=/storage/store/mohit/data/chromosight/GM12878_chr6_10k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=raw/chromosight.chr6_10k --LabelRef="CTCF" --LabelInp="Chromosight"
echo "ending chromosight plots"


#SIP
echo "generating sip plots"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr1.txt --InpFile=/storage/store/mohit/data/sip/GM12878_chr1_5k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=raw/sip.chr1_5k --LabelRef="CTCF" --LabelInp="SIP"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr1.txt --InpFile=/storage/store/mohit/data/sip/GM12878_chr1_10k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=raw/sip.chr1_10k --LabelRef="CTCF" --LabelInp="SIP"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr6.txt --InpFile=/storage/store/mohit/data/sip/GM12878_chr6_5k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=raw/sip.chr6_5k --LabelRef="CTCF" --LabelInp="SIP"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr6.txt --InpFile=/storage/store/mohit/data/sip/GM12878_chr6_10k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=raw/sip.chr6_10k --LabelRef="CTCF" --LabelInp="SIP"
echo "ending sip plots"


#cLoops
echo "generating cLoops plots"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr1.txt --InpFile=/storage/store/mohit/data/cloops/GM12878_chr1.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=raw/cloops.chr1_5k --LabelRef="CTCF" --LabelInp="cLoops"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr1.txt --InpFile=/storage/store/mohit/data/cloops/GM12878_chr1.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=raw/cloops.chr1_10k --LabelRef="CTCF" --LabelInp="cLoops"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr6.txt --InpFile=/storage/store/mohit/data/cloops/GM12878_chr6.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=raw/cloops.chr6_5k --LabelRef="CTCF" --LabelInp="cLoops"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr6.txt --InpFile=/storage/store/mohit/data/cloops/GM12878_chr6.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=raw/cloops.chr6_10k --LabelRef="CTCF" --LabelInp="cLoops"
echo "ending cLoops plots"


#cLoops2
echo "generating cLoops2 plots"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr1.txt --InpFile=/storage/store/mohit/data/cloops2/GM12878_chr1.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=raw/cloops2.chr1_5k --LabelRef="CTCF" --LabelInp="cLoops2"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr1.txt --InpFile=/storage/store/mohit/data/cloops2/GM12878_chr1.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=raw/cloops2.chr1_10k --LabelRef="CTCF" --LabelInp="cLoops2"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr6.txt --InpFile=/storage/store/mohit/data/cloops2/GM12878_chr6.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=raw/cloops2.chr6_5k --LabelRef="CTCF" --LabelInp="cLoops2"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr6.txt --InpFile=/storage/store/mohit/data/cloops2/GM12878_chr6.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=raw/cloops2.chr6_10k --LabelRef="CTCF" --LabelInp="cLoops2"
echo "ending cLoops2 plots"


#HiCCUPs
echo "generating HiCCUPs plots"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr1.txt --InpFile=/storage/store/mohit/data/hiccups/GM12878_chr1_5k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=raw/hiccups.chr1_5k --LabelRef="CTCF" --LabelInp="HiCCUPS"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr1.txt --InpFile=/storage/store/mohit/data/hiccups/GM12878_chr1_10k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=raw/hiccups.chr1_10k --LabelRef="CTCF" --LabelInp="HiCCUPS"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr6.txt --InpFile=/storage/store/mohit/data/hiccups/GM12878_chr6_5k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=raw/hiccups.chr6_5k --LabelRef="CTCF" --LabelInp="HiCCUPS"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_RNAPII_PET_chr6.txt --InpFile=/storage/store/mohit/data/hiccups/GM12878_chr6_10k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=raw/hiccups.chr6_10k --LabelRef="CTCF" --LabelInp="HiCCUPS"
echo "ending HiCCUPs plots"