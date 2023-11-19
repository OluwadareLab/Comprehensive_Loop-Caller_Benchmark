#!/bin/bash

exec > ctcf_recovery_kr.log 2>&1
echo "generating ctcf recovery for kr"

#LASCA
echo "generating lasca plots"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr1.txt --InpFile=/storage/store/mohit/data/kr_norm/lasca/GM12878_chr1_5k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=lasca.chr1_5k --LabelRef="CTCF" --LabelInp="LASCA"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr1.txt --InpFile=/storage/store/mohit/data/kr_norm/lasca/GM12878_chr1_10k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=lasca.chr1_10k --LabelRef="CTCF" --LabelInp="LASCA"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr6.txt --InpFile=/storage/store/mohit/data/kr_norm/lasca/GM12878_chr6_5k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=lasca.chr6_5k --LabelRef="CTCF" --LabelInp="LASCA"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr6.txt --InpFile=/storage/store/mohit/data/kr_norm/lasca/GM12878_chr6_10k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=lasca.chr6_10k --LabelRef="CTCF" --LabelInp="LASCA"
echo "ending lasca plots"


#HiCExplorer
echo "generating hicexplorer plots"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr1.txt --InpFile=/storage/store/mohit/data/kr_norm/hicexplorer/GM12878_chr1_5k.bedgraph --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=hicexplorer.chr1_5k --LabelRef="CTCF" --LabelInp="HiCExplorer" &
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr1.txt --InpFile=/storage/store/mohit/data/kr_norm/hicexplorer/GM12878_chr1_10k.bedgraph --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=hicexplorer.chr1_10k --LabelRef="CTCF" --LabelInp="HiCExplorer" &
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr6.txt --InpFile=/storage/store/mohit/data/kr_norm/hicexplorer/GM12878_chr6_5k.bedgraph --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=hicexplorer.chr6_5k --LabelRef="CTCF" --LabelInp="HiCExplorer" &
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr6.txt --InpFile=/storage/store/mohit/data/kr_norm/hicexplorer/GM12878_chr6_10k.bedgraph --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=hicexplorer.chr6_10k --LabelRef="CTCF" --LabelInp="HiCExplorer" &
wait
echo "ending hicexplorer plots"


#FitHiC
echo "generating FitHiC plots"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr1.txt --InpFile=/storage/store/mohit/data/kr_norm/fithic/GM12878_chr1_5k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=fithic.chr1_5k --LabelRef="CTCF" --LabelInp="FitHiC"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr1.txt --InpFile=/storage/store/mohit/data/kr_norm/fithic/GM12878_chr1_10k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=fithic.chr1_10k --LabelRef="CTCF" --LabelInp="FitHiC"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr6.txt --InpFile=/storage/store/mohit/data/kr_norm/fithic/GM12878_chr6_5k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=fithic.chr6_5k --LabelRef="CTCF" --LabelInp="FitHiC"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr6.txt --InpFile=/storage/store/mohit/data/kr_norm/fithic/GM12878_chr6_10k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=fithic.chr6_10k --LabelRef="CTCF" --LabelInp="FitHiC"
echo "ending FitHiC plots"


#FitHiChIP
echo "generating FitHiChIP plots"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr1.txt --InpFile=/storage/store/mohit/data/kr_norm/FitHiChIP/GM12878_chr1_5k.bed --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=FitHiChIP.chr1_5k --LabelRef="CTCF" --LabelInp="FitHiChIP"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr1.txt --InpFile=/storage/store/mohit/data/kr_norm/FitHiChIP/GM12878_chr1_10k.bed --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=FitHiChIP.chr1_10k --LabelRef="CTCF" --LabelInp="FitHiChIP"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr6.txt --InpFile=/storage/store/mohit/data/kr_norm/FitHiChIP/GM12878_chr6_5k.bed --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=FitHiChIP.chr6_5k --LabelRef="CTCF" --LabelInp="FitHiChIP"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr6.txt --InpFile=/storage/store/mohit/data/kr_norm/FitHiChIP/GM12878_chr6_10k.bed --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=FitHiChIP.chr6_10k --LabelRef="CTCF" --LabelInp="FitHiChIP"
echo "ending FitHiChIP plots"


#Peakachu
echo "generating peakachu plots"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr1.txt --InpFile=/storage/store/mohit/data/kr_norm/peakachu/GM12878_chr1_5k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=peakachu.chr1_5k --LabelRef="CTCF" --LabelInp="Peakachu"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr1.txt --InpFile=/storage/store/mohit/data/kr_norm/peakachu/GM12878_chr1_10k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=peakachu.chr1_10k --LabelRef="CTCF" --LabelInp="Peakachu"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr6.txt --InpFile=/storage/store/mohit/data/kr_norm/peakachu/GM12878_chr6_5k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=peakachu.chr6_5k --LabelRef="CTCF" --LabelInp="Peakachu"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr6.txt --InpFile=/storage/store/mohit/data/kr_norm/peakachu/GM12878_chr6_10k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=peakachu.chr6_10k --LabelRef="CTCF" --LabelInp="Peakachu"
echo "ending peakachu plots"


#Mustache
echo "generating mustache plots"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr1.txt --InpFile=/storage/store/mohit/data/kr_norm/mustache/GM12878_chr1_5k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=mustache.chr1_5k --LabelRef="CTCF" --LabelInp="Mustache"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr1.txt --InpFile=/storage/store/mohit/data/kr_norm/mustache/GM12878_chr1_10k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=mustache.chr1_10k --LabelRef="CTCF" --LabelInp="Mustache"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr6.txt --InpFile=/storage/store/mohit/data/kr_norm/mustache/GM12878_chr6_5k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=mustache.chr6_5k --LabelRef="CTCF" --LabelInp="Mustache"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr6.txt --InpFile=/storage/store/mohit/data/kr_norm/mustache/GM12878_chr6_10k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=mustache.chr6_10k --LabelRef="CTCF" --LabelInp="Mustache"
echo "ending mustache plots"


#Chromosight
echo "generating chromosight plots"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr1.txt --InpFile=/storage/store/mohit/data/kr_norm/chromosight/GM12878_chr1_5k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=chromosight.chr1_5k --LabelRef="CTCF" --LabelInp="Chromosight"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr1.txt --InpFile=/storage/store/mohit/data/kr_norm/chromosight/GM12878_chr1_10k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=chromosight.chr1_10k --LabelRef="CTCF" --LabelInp="Chromosight"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr6.txt --InpFile=/storage/store/mohit/data/kr_norm/chromosight/GM12878_chr6_5k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=chromosight.chr6_5k --LabelRef="CTCF" --LabelInp="Chromosight"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr6.txt --InpFile=/storage/store/mohit/data/kr_norm/chromosight/GM12878_chr6_10k.tsv --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=chromosight.chr6_10k --LabelRef="CTCF" --LabelInp="Chromosight"
echo "ending chromosight plots"


#SIP
echo "generating sip plots"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr1.txt --InpFile=/storage/store/mohit/data/kr_norm/sip/GM12878_chr1_5k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=sip.chr1_5k --LabelRef="CTCF" --LabelInp="SIP"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr1.txt --InpFile=/storage/store/mohit/data/kr_norm/sip/GM12878_chr1_10k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=sip.chr1_10k --LabelRef="CTCF" --LabelInp="SIP"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr6.txt --InpFile=/storage/store/mohit/data/kr_norm/sip/GM12878_chr6_5k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=sip.chr6_5k --LabelRef="CTCF" --LabelInp="SIP"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr6.txt --InpFile=/storage/store/mohit/data/kr_norm/sip/GM12878_chr6_10k.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=sip.chr6_10k --LabelRef="CTCF" --LabelInp="SIP"
echo "ending sip plots"


#cLoops
echo "generating cLoops plots"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr1.txt --InpFile=/storage/store/mohit/data/kr_norm/cloops/GM12878_chr1.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=cloops.chr1_5k --LabelRef="CTCF" --LabelInp="cLoops"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr1.txt --InpFile=/storage/store/mohit/data/kr_norm/cloops/GM12878_chr1.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=cloops.chr1_10k --LabelRef="CTCF" --LabelInp="cLoops"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr6.txt --InpFile=/storage/store/mohit/data/kr_norm/cloops/GM12878_chr6.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=cloops.chr6_5k --LabelRef="CTCF" --LabelInp="cLoops"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr6.txt --InpFile=/storage/store/mohit/data/kr_norm/cloops/GM12878_chr6.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=cloops.chr6_10k --LabelRef="CTCF" --LabelInp="cLoops"
echo "ending cLoops plots"


#cLoops2
echo "generating cLoops2 plots"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr1.txt --InpFile=/storage/store/mohit/data/kr_norm/cloops2/GM12878_chr1.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=cloops2.chr1_5k --LabelRef="CTCF" --LabelInp="cLoops2"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr1.txt --InpFile=/storage/store/mohit/data/kr_norm/cloops2/GM12878_chr1.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=cloops2.chr1_10k --LabelRef="CTCF" --LabelInp="cLoops2"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr6.txt --InpFile=/storage/store/mohit/data/kr_norm/cloops2/GM12878_chr6.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=cloops2.chr6_5k --LabelRef="CTCF" --LabelInp="cLoops2"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr6.txt --InpFile=/storage/store/mohit/data/kr_norm/cloops2/GM12878_chr6.txt --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=cloops2.chr6_10k --LabelRef="CTCF" --LabelInp="cLoops2"
echo "ending cLoops2 plots"


#HiCCUPs
echo "generating HiCCUPs plots"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr1.txt --InpFile=/storage/store/mohit/data/hiccups/kr_norm/GM12878_chr1_5k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=hiccups.chr1_5k --LabelRef="CTCF" --LabelInp="HiCCUPS"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr1.txt --InpFile=/storage/store/mohit/data/hiccups/kr_norm/GM12878_chr1_10k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=hiccups.chr1_10k --LabelRef="CTCF" --LabelInp="HiCCUPS"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr6.txt --InpFile=/storage/store/mohit/data/hiccups/kr_norm/GM12878_chr6_5k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=5000 --binsizeInp=5000 --offset=50 --OutDir=hiccups.chr6_5k --LabelRef="CTCF" --LabelInp="HiCCUPS"
Rscript Recovery_HiChIP_Loops.R --RefFile=GSM1872886_GM12878_CTCF_PET_chr6.txt --InpFile=/storage/store/mohit/data/hiccups/kr_norm/GM12878_chr6_10k.bedpe --headerRef FALSE --headerInp FALSE --QcolInp=0 --chrRef TRUE --chrInp TRUE --midRef FALSE --midInp FALSE --binsizeRef=10000 --binsizeInp=10000 --offset=50 --OutDir=hiccups.chr6_10k --LabelRef="CTCF" --LabelInp="HiCCUPS"
echo "ending HiCCUPs plots"