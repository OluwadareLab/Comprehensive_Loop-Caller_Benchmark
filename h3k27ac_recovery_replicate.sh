#!/bin/bash

exec > h3k27ac_recovery_replicate.log 2>&1
echo "generating h3k27ac recovery for replicate"

#LASCA
echo "generating lasca "
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr1_5k.bedpe --InpFile=/storage/store/mohit/data/replicate/lasca/GM12878_chr1_5k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=replicate/lasca.chr1_5k --LabelRef="CTCF" --LabelInp="LASCA"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr1_10k.bedpe --InpFile=/storage/store/mohit/data/replicate/lasca/GM12878_chr1_10k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=replicate/lasca.chr1_10k --LabelRef="CTCF" --LabelInp="LASCA"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr6_5k.bedpe --InpFile=/storage/store/mohit/data/replicate/lasca/GM12878_chr6_5k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=replicate/lasca.chr6_5k --LabelRef="CTCF" --LabelInp="LASCA"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr6_10k.bedpe --InpFile=/storage/store/mohit/data/replicate/lasca/GM12878_chr6_10k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=replicate/lasca.chr6_10k --LabelRef="CTCF" --LabelInp="LASCA"
echo "ending lasca "


#HiCExplorer
echo "generating hicexplorer "
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr1_5k.bedpe --InpFile=/storage/store/mohit/data/replicate/hicexplorer/GM12878_chr1_5k.bedgraph --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=replicate/hicexplorer.chr1_5k --LabelRef="CTCF" --LabelInp="HiCExplorer"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr1_10k.bedpe --InpFile=/storage/store/mohit/data/replicate/hicexplorer/GM12878_chr1_10k.bedgraph --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=replicate/hicexplorer.chr1_10k --LabelRef="CTCF" --LabelInp="HiCExplorer"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr6_5k.bedpe --InpFile=/storage/store/mohit/data/replicate/hicexplorer/GM12878_chr6_5k.bedgraph --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=replicate/hicexplorer.chr6_5k --LabelRef="CTCF" --LabelInp="HiCExplorer"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr6_10k.bedpe --InpFile=/storage/store/mohit/data/replicate/hicexplorer/GM12878_chr6_10k.bedgraph --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=replicate/hicexplorer.chr6_10k --LabelRef="CTCF" --LabelInp="HiCExplorer"
echo "ending hicexplorer "


#FitHiC
echo "generating FitHiC "
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr1_5k.bedpe --InpFile=/storage/store/mohit/data/replicate/fithic/GM12878_chr1_5k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=replicate/fithic.chr1_5k --LabelRef="CTCF" --LabelInp="FitHiC"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr1_10k.bedpe --InpFile=/storage/store/mohit/data/replicate/fithic/GM12878_chr1_10k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=replicate/fithic.chr1_10k --LabelRef="CTCF" --LabelInp="FitHiC"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr6_5k.bedpe --InpFile=/storage/store/mohit/data/replicate/fithic/GM12878_chr6_5k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=replicate/fithic.chr6_5k --LabelRef="CTCF" --LabelInp="FitHiC"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr6_10k.bedpe --InpFile=/storage/store/mohit/data/replicate/fithic/GM12878_chr6_10k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=replicate/fithic.chr6_10k --LabelRef="CTCF" --LabelInp="FitHiC"
echo "ending FitHiC "


#FitHiChIP
echo "generating FitHiChIP "
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr1_5k.bedpe --InpFile=/storage/store/mohit/data/replicate/FitHiChIP/GM12878_chr1_5k.bed --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=replicate/FitHiChIP.chr1_5k --LabelRef="CTCF" --LabelInp="FitHiChIP"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr1_10k.bedpe --InpFile=/storage/store/mohit/data/replicate/FitHiChIP/GM12878_chr1_10k.bed --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=replicate/FitHiChIP.chr1_10k --LabelRef="CTCF" --LabelInp="FitHiChIP"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr6_5k.bedpe --InpFile=/storage/store/mohit/data/replicate/FitHiChIP/GM12878_chr6_5k.bed --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=replicate/FitHiChIP.chr6_5k --LabelRef="CTCF" --LabelInp="FitHiChIP"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr6_10k.bedpe --InpFile=/storage/store/mohit/data/replicate/FitHiChIP/GM12878_chr6_10k.bed --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=replicate/FitHiChIP.chr6_10k --LabelRef="CTCF" --LabelInp="FitHiChIP"
echo "ending FitHiChIP "


#Peakachu
echo "generating peakachu "
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr1_5k.bedpe --InpFile=/storage/store/mohit/data/replicate/peakachu/GM12878_chr1_5k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=replicate/peakachu.chr1_5k --LabelRef="CTCF" --LabelInp="Peakachu"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr1_10k.bedpe --InpFile=/storage/store/mohit/data/replicate/peakachu/GM12878_chr1_10k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=replicate/peakachu.chr1_10k --LabelRef="CTCF" --LabelInp="Peakachu"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr6_5k.bedpe --InpFile=/storage/store/mohit/data/replicate/peakachu/GM12878_chr6_5k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=replicate/peakachu.chr6_5k --LabelRef="CTCF" --LabelInp="Peakachu"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr6_10k.bedpe --InpFile=/storage/store/mohit/data/replicate/peakachu/GM12878_chr6_10k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=replicate/peakachu.chr6_10k --LabelRef="CTCF" --LabelInp="Peakachu"
echo "ending peakachu "


#Mustache
echo "generating mustache "
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr1_5k.bedpe --InpFile=/storage/store/mohit/data/replicate/mustache/GM12878_chr1_5k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=replicate/mustache.chr1_5k --LabelRef="CTCF" --LabelInp="Mustache"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr1_10k.bedpe --InpFile=/storage/store/mohit/data/replicate/mustache/GM12878_chr1_10k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=replicate/mustache.chr1_10k --LabelRef="CTCF" --LabelInp="Mustache"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr6_5k.bedpe --InpFile=/storage/store/mohit/data/replicate/mustache/GM12878_chr6_5k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=replicate/mustache.chr6_5k --LabelRef="CTCF" --LabelInp="Mustache"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr6_10k.bedpe --InpFile=/storage/store/mohit/data/replicate/mustache/GM12878_chr6_10k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=replicate/mustache.chr6_10k --LabelRef="CTCF" --LabelInp="Mustache"
echo "ending mustache "


#Chromosight
echo "generating chromosight "
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr1_5k.bedpe --InpFile=/storage/store/mohit/data/replicate/chromosight/GM12878_chr1_5k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=replicate/chromosight.chr1_5k --LabelRef="CTCF" --LabelInp="Chromosight"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr1_10k.bedpe --InpFile=/storage/store/mohit/data/replicate/chromosight/GM12878_chr1_10k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=replicate/chromosight.chr1_10k --LabelRef="CTCF" --LabelInp="Chromosight"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr6_5k.bedpe --InpFile=/storage/store/mohit/data/replicate/chromosight/GM12878_chr6_5k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=replicate/chromosight.chr6_5k --LabelRef="CTCF" --LabelInp="Chromosight"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr6_10k.bedpe --InpFile=/storage/store/mohit/data/replicate/chromosight/GM12878_chr6_10k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=replicate/chromosight.chr6_10k --LabelRef="CTCF" --LabelInp="Chromosight"
echo "ending chromosight "


#SIP
echo "generating sip "
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr1_5k.bedpe --InpFile=/storage/store/mohit/data/replicate/sip/GM12878_chr1_5k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=replicate/sip.chr1_5k --LabelRef="CTCF" --LabelInp="SIP"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr1_10k.bedpe --InpFile=/storage/store/mohit/data/replicate/sip/GM12878_chr1_10k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=replicate/sip.chr1_10k --LabelRef="CTCF" --LabelInp="SIP"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr6_5k.bedpe --InpFile=/storage/store/mohit/data/replicate/sip/GM12878_chr6_5k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=replicate/sip.chr6_5k --LabelRef="CTCF" --LabelInp="SIP"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr6_10k.bedpe --InpFile=/storage/store/mohit/data/replicate/sip/GM12878_chr6_10k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=replicate/sip.chr6_10k --LabelRef="CTCF" --LabelInp="SIP"
echo "ending sip "


#cLoops
echo "generating cLoops "
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr1_5k.bedpe --InpFile=/storage/store/mohit/data/replicate/cloops/GM12878_chr1.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=replicate/cloops.chr1_5k --LabelRef="CTCF" --LabelInp="cLoops"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr1_10k.bedpe --InpFile=/storage/store/mohit/data/replicate/cloops/GM12878_chr1.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=replicate/cloops.chr1_10k --LabelRef="CTCF" --LabelInp="cLoops"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr6_5k.bedpe --InpFile=/storage/store/mohit/data/replicate/cloops/GM12878_chr6.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=replicate/cloops.chr6_5k --LabelRef="CTCF" --LabelInp="cLoops"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr6_10k.bedpe --InpFile=/storage/store/mohit/data/replicate/cloops/GM12878_chr6.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=replicate/cloops.chr6_10k --LabelRef="CTCF" --LabelInp="cLoops"
echo "ending cLoops "


#cLoops2
echo "generating cLoops2 "
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr1_5k.bedpe --InpFile=/storage/store/mohit/data/replicate/cloops2/GM12878_chr1.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=replicate/cloops2.chr1_5k --LabelRef="CTCF" --LabelInp="cLoops2"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr1_10k.bedpe --InpFile=/storage/store/mohit/data/replicate/cloops2/GM12878_chr1.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=replicate/cloops2.chr1_10k --LabelRef="CTCF" --LabelInp="cLoops2"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr6_5k.bedpe --InpFile=/storage/store/mohit/data/replicate/cloops2/GM12878_chr6.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=replicate/cloops2.chr6_5k --LabelRef="CTCF" --LabelInp="cLoops2"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr6_10k.bedpe --InpFile=/storage/store/mohit/data/replicate/cloops2/GM12878_chr6.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=replicate/cloops2.chr6_10k --LabelRef="CTCF" --LabelInp="cLoops2"
echo "ending cLoops2 "


#HiCCUPs
echo "generating HiCCUPs "
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr1_5k.bedpe --InpFile=/storage/store/mohit/data/hiccups/replicate/GM12878_chr1_5k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=replicate/hiccups.chr1_5k --LabelRef="CTCF" --LabelInp="HiCCUPS"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr1_10k.bedpe --InpFile=/storage/store/mohit/data/hiccups/replicate/GM12878_chr1_10k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=replicate/hiccups.chr1_10k --LabelRef="CTCF" --LabelInp="HiCCUPS"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr6_5k.bedpe --InpFile=/storage/store/mohit/data/hiccups/replicate/GM12878_chr6_5k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=replicate/hiccups.chr6_5k --LabelRef="CTCF" --LabelInp="HiCCUPS"
Rscript Recovery_HiChIP_Loops.R --RefFile=h3k27ac_chr6_10k.bedpe --InpFile=/storage/store/mohit/data/hiccups/replicate/GM12878_chr6_10k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=replicate/hiccups.chr6_10k --LabelRef="CTCF" --LabelInp="HiCCUPS"
echo "ending HiCCUPs "