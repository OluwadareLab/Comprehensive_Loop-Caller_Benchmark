#!/bin/bash

exec > venn.log 2>&1
echo "generating venn plots"

#LASCA
echo "generating lasca plots"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/lasca/GM12878_chr1_5k.bedpe":"/storage/store/mohit/data/kr_norm/lasca/GM12878_chr1_5k.bedpe":"/storage/store/mohit/data/replicate/lasca/GM12878_chr1_5k.bedpe" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="lasca.chr1.5k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/lasca/GM12878_chr6_5k.bedpe":"/storage/store/mohit/data/kr_norm/lasca/GM12878_chr6_10k.bedpe":"/storage/store/mohit/data/replicate/lasca/GM12878_chr6_5k.bedpe" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="lasca.chr6.5k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/lasca/GM12878_chr1_10k.bedpe":"/storage/store/mohit/data/kr_norm/lasca/GM12878_chr1_5k.bedpe":"/storage/store/mohit/data/replicate/lasca/GM12878_chr1_10k.bedpe" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="lasca.chr1.10k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/lasca/GM12878_chr6_10k.bedpe":"/storage/store/mohit/data/kr_norm/lasca/GM12878_chr6_10k.bedpe":"/storage/store/mohit/data/replicate/lasca/GM12878_chr6_10k.bedpe" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="lasca.chr6.10k.venn"
echo "ending lasca plots"


#HiCExplorer
echo "generating hicexplorer plots"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/hicexplorer/GM12878_chr1_5k.bedgraph":"/storage/store/mohit/data/kr_norm/hicexplorer/GM12878_chr1_5k.bedgraph":"/storage/store/mohit/data/replicate/hicexplorer/GM12878_chr1_5k.bedgraph" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="hicexplorer.chr1.5k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/hicexplorer/GM12878_chr6_5k.bedgraph":"/storage/store/mohit/data/kr_norm/hicexplorer/GM12878_chr6_10k.bedgraph":"/storage/store/mohit/data/replicate/hicexplorer/GM12878_chr6_5k.bedgraph" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="hicexplorer.chr6.5k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/hicexplorer/GM12878_chr1_10k.bedgraph":"/storage/store/mohit/data/kr_norm/hicexplorer/GM12878_chr1_5k.bedgraph":"/storage/store/mohit/data/replicate/hicexplorer/GM12878_chr1_10k.bedgraph" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="hicexplorer.chr1.10k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/hicexplorer/GM12878_chr6_10k.bedgraph":"/storage/store/mohit/data/kr_norm/hicexplorer/GM12878_chr6_10k.bedgraph":"/storage/store/mohit/data/replicate/hicexplorer/GM12878_chr6_10k.bedgraph" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="hicexplorer.chr6.10k.venn"
wait
echo "ending hicexplorer plots"


#FitHiC
echo "generating FitHiC plots"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/fithic/GM12878_chr1_5k.txt":"/storage/store/mohit/data/kr_norm/fithic/GM12878_chr1_5k.txt":"/storage/store/mohit/data/replicate/fithic/GM12878_chr1_5k.txt" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="fithic.chr1.5k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/fithic/GM12878_chr6_5k.txt":"/storage/store/mohit/data/kr_norm/fithic/GM12878_chr6_10k.txt":"/storage/store/mohit/data/replicate/fithic/GM12878_chr6_5k.txt" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="fithic.chr6.5k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/fithic/GM12878_chr1_10k.txt":"/storage/store/mohit/data/kr_norm/fithic/GM12878_chr1_5k.txt":"/storage/store/mohit/data/replicate/fithic/GM12878_chr1_10k.txt" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="fithic.chr1.10k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/fithic/GM12878_chr6_10k.txt":"/storage/store/mohit/data/kr_norm/fithic/GM12878_chr6_10k.txt":"/storage/store/mohit/data/replicate/fithic/GM12878_chr6_10k.txt" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="fithic.chr6.10k.venn"
echo "ending FitHiC plots"


#FitHiChIP
echo "generating FitHiChIP plots"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/FitHiChIP/GM12878_chr1_5k.bed":"/storage/store/mohit/data/kr_norm/FitHiChIP/GM12878_chr1_5k.bed":"/storage/store/mohit/data/replicate/FitHiChIP/GM12878_chr1_5k.bed" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="FitHiChIP.chr1.5k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/FitHiChIP/GM12878_chr6_5k.bed":"/storage/store/mohit/data/kr_norm/FitHiChIP/GM12878_chr6_10k.bed":"/storage/store/mohit/data/replicate/FitHiChIP/GM12878_chr6_5k.bed" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="FitHiChIP.chr6.5k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/FitHiChIP/GM12878_chr1_10k.bed":"/storage/store/mohit/data/kr_norm/FitHiChIP/GM12878_chr1_5k.bed":"/storage/store/mohit/data/replicate/FitHiChIP/GM12878_chr1_10k.bed" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="FitHiChIP.chr1.10k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/FitHiChIP/GM12878_chr6_10k.bed":"/storage/store/mohit/data/kr_norm/FitHiChIP/GM12878_chr6_10k.bed":"/storage/store/mohit/data/replicate/FitHiChIP/GM12878_chr6_10k.bed" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="FitHiChIP.chr6.10k.venn"
echo "ending FitHiChIP plots"


#Peakachu
echo "generating peakachu plots"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/peakachu/GM12878_chr1_5k.bedpe":"/storage/store/mohit/data/kr_norm/peakachu/GM12878_chr1_5k.bedpe":"/storage/store/mohit/data/replicate/peakachu/GM12878_chr1_5k.bedpe" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="peakachu.chr1.5k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/peakachu/GM12878_chr6_5k.bedpe":"/storage/store/mohit/data/kr_norm/peakachu/GM12878_chr6_10k.bedpe":"/storage/store/mohit/data/replicate/peakachu/GM12878_chr6_5k.bedpe" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="peakachu.chr6.5k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/peakachu/GM12878_chr1_10k.bedpe":"/storage/store/mohit/data/kr_norm/peakachu/GM12878_chr1_5k.bedpe":"/storage/store/mohit/data/replicate/peakachu/GM12878_chr1_10k.bedpe" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="peakachu.chr1.10k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/peakachu/GM12878_chr6_10k.bedpe":"/storage/store/mohit/data/kr_norm/peakachu/GM12878_chr6_10k.bedpe":"/storage/store/mohit/data/replicate/peakachu/GM12878_chr6_10k.bedpe" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="peakachu.chr6.10k.venn"
echo "ending peakachu plots"


#Mustache
echo "generating mustache plots"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/mustache/GM12878_chr1_5k.tsv":"/storage/store/mohit/data/kr_norm/mustache/GM12878_chr1_5k.tsv":"/storage/store/mohit/data/replicate/mustache/GM12878_chr1_5k.tsv" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="mustache.chr1.5k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/mustache/GM12878_chr6_5k.tsv":"/storage/store/mohit/data/kr_norm/mustache/GM12878_chr6_10k.tsv":"/storage/store/mohit/data/replicate/mustache/GM12878_chr6_5k.tsv" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="mustache.chr6.5k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/mustache/GM12878_chr1_10k.tsv":"/storage/store/mohit/data/kr_norm/mustache/GM12878_chr1_5k.tsv":"/storage/store/mohit/data/replicate/mustache/GM12878_chr1_10k.tsv" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="mustache.chr1.10k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/mustache/GM12878_chr6_10k.tsv":"/storage/store/mohit/data/kr_norm/mustache/GM12878_chr6_10k.tsv":"/storage/store/mohit/data/replicate/mustache/GM12878_chr6_10k.tsv" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="mustache.chr6.10k.venn"
echo "ending mustache plots"


#Chromosight
echo "generating chromosight plots"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/chromosight/GM12878_chr1_5k.tsv":"/storage/store/mohit/data/kr_norm/chromosight/GM12878_chr1_5k.tsv":"/storage/store/mohit/data/replicate/chromosight/GM12878_chr1_5k.tsv" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="chromosight.chr1.5k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/chromosight/GM12878_chr6_5k.tsv":"/storage/store/mohit/data/kr_norm/chromosight/GM12878_chr6_10k.tsv":"/storage/store/mohit/data/replicate/chromosight/GM12878_chr6_5k.tsv" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="chromosight.chr6.5k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/chromosight/GM12878_chr1_10k.tsv":"/storage/store/mohit/data/kr_norm/chromosight/GM12878_chr1_5k.tsv":"/storage/store/mohit/data/replicate/chromosight/GM12878_chr1_10k.tsv" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="chromosight.chr1.10k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/chromosight/GM12878_chr6_10k.tsv":"/storage/store/mohit/data/kr_norm/chromosight/GM12878_chr6_10k.tsv":"/storage/store/mohit/data/replicate/chromosight/GM12878_chr6_10k.tsv" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="chromosight.chr6.10k.venn"
echo "ending chromosight plots"


#SIP
echo "generating sip plots"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/sip/GM12878_chr1_5k.txt":"/storage/store/mohit/data/kr_norm/sip/GM12878_chr1_5k.txt":"/storage/store/mohit/data/replicate/sip/GM12878_chr1_5k.txt" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="sip.chr1.5k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/sip/GM12878_chr6_5k.txt":"/storage/store/mohit/data/kr_norm/sip/GM12878_chr6_10k.txt":"/storage/store/mohit/data/replicate/sip/GM12878_chr6_5k.txt" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="sip.chr6.5k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/sip/GM12878_chr1_10k.txt":"/storage/store/mohit/data/kr_norm/sip/GM12878_chr1_5k.txt":"/storage/store/mohit/data/replicate/sip/GM12878_chr1_10k.txt" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="sip.chr1.10k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/sip/GM12878_chr6_10k.txt":"/storage/store/mohit/data/kr_norm/sip/GM12878_chr6_10k.txt":"/storage/store/mohit/data/replicate/sip/GM12878_chr6_10k.txt" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="sip.chr6.10k.venn"
echo "ending sip plots"


#cLoops
echo "generating cLoops plots"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/cloops/GM12878_chr1.txt":"/storage/store/mohit/data/replicate/cloops/GM12878_chr1.txt" --HeaderList=0:0 --Labels="Raw":"Replicate" --offset=50 --OutDir="cloops.chr1.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/cloops/GM12878_chr6.txt":"/storage/store/mohit/data/replicate/cloops/GM12878_chr6.txt" --HeaderList=0:0 --Labels="Raw":"Replicate" --offset=50 --OutDir="cloops.chr6.venn"
echo "ending cLoops plots"


#cLoops2
echo "generating cLoops2 plots"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/cloops2/GM12878_chr1.txt":"/storage/store/mohit/data/replicate/cloops2/GM12878_chr1.txt" --HeaderList=0:0 --Labels="Raw":"Replicate" --offset=50 --OutDir="cloops2.chr1.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/cloops2/GM12878_chr6.txt":"/storage/store/mohit/data/replicate/cloops2/GM12878_chr6.txt" --HeaderList=0:0 --Labels="Raw":"Replicate" --offset=50 --OutDir="cloops2.chr6.venn"
echo "ending cLoops2 plots"


#HiCCUPs
echo "generating HiCCUPs plots"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/hiccups/GM12878_chr1_5k.bedpe":"/storage/store/mohit/data/hiccups/kr_norm/GM12878_chr1_5k.bedpe":"/storage/store/mohit/data/hiccups/replicate/GM12878_chr1_5k.bedpe" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="hiccups.chr1.5k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/hiccups/GM12878_chr6_5k.bedpe":"/storage/store/mohit/data/hiccups/kr_norm/GM12878_chr6_10k.bedpe":"/storage/store/mohit/data/hiccups/replicate/GM12878_chr6_5k.bedpe" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="hiccups.chr6.5k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/hiccups/GM12878_chr1_10k.bedpe":"/storage/store/mohit/data/hiccups/kr_norm/GM12878_chr1_5k.bedpe":"/storage/store/mohit/data/hiccups/replicate/GM12878_chr1_10k.bedpe" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="hiccups.chr1.10k.venn"
Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/hiccups/GM12878_chr6_10k.bedpe":"/storage/store/mohit/data/hiccups/kr_norm/GM12878_chr6_10k.bedpe":"/storage/store/mohit/data/hiccups/replicate/GM12878_chr6_10k.bedpe" --HeaderList=0:0:0 --Labels="Raw":"Normalized":"Replicate" --offset=50 --OutDir="hiccups.chr6.10k.venn"
echo "ending HiCCUPs plots"




Rscript Venn_Interactions.r --FileList="/storage/store/mohit/data/hicexplorer/GM12878_chr1_5k.bedgraph":"/storage/store/mohit/data/replicate/hicexplorer/GM12878_chr1_5k.bedgraph" --HeaderList=0:0 --Labels="Raw":"Replicate" --offset=50 --OutDir="hicexplorer.chr1.5k.venn"