#!/bin/bash

exec > apa_kr_norm.log 2>&1

#LASCA
echo "generating lasca plots"
peak-plot -O lasca.chr1_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/lasca/GM12878_chr1_5k.bedpe -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O lasca.chr1_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/lasca/GM12878_chr1_10k.bedpe -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O lasca.chr6_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/lasca/GM12878_chr6_5k.bedpe -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O lasca.chr6_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/lasca/GM12878_chr6_10k.bedpe -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
apa-analysis -O lasca.chr1_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/lasca/GM12878_chr1_5k.bedpe --vmax 2 &
apa-analysis -O lasca.chr1_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/lasca/GM12878_chr1_10k.bedpe --vmax 2 &
apa-analysis -O lasca.chr6_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/lasca/GM12878_chr6_5k.bedpe --vmax 2 &
apa-analysis -O lasca.chr6_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/lasca/GM12878_chr6_10k.bedpe --vmax 2 &
wait
echo "ending lasca plots"


#HiCExplorer
echo "generating hicexplorer plots"
peak-plot -O hicexplorer.chr1_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/hicexplorer/GM12878_primary_30_KR_5000_chr1.hicexplorer.bedgraph -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O hicexplorer.chr1_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/hicexplorer/GM12878_primary_30_KR_10000_chr1.hicexplorer.bedgraph -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O hicexplorer.chr6_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/hicexplorer/GM12878_primary_30_KR_5000_chr6.hicexplorer.bedgraph -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O hicexplorer.chr6_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/hicexplorer/GM12878_primary_30_KR_10000_chr6.hicexplorer.bedgraph -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
apa-analysis -O hicexplorer.chr1_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/hicexplorer/GM12878_primary_30_KR_5000_chr1.hicexplorer.bedgraph --vmax 2 &
apa-analysis -O hicexplorer.chr1_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/hicexplorer/GM12878_primary_30_KR_10000_chr1.hicexplorer.bedgraph --vmax 2 &
apa-analysis -O hicexplorer.chr6_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/hicexplorer/GM12878_primary_30_KR_5000_chr6.hicexplorer.bedgraph --vmax 2 &
apa-analysis -O hicexplorer.chr6_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/hicexplorer/GM12878_primary_30_KR_10000_chr6.hicexplorer.bedgraph --vmax 2 &
wait
echo "ending hicexplorer plots"


#FitHiC
echo "generating fithic plots"
peak-plot -O fithic.chr1_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/fithic/GM12878_chr1_5k.txt -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O fithic.chr1_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/fithic/GM12878_chr1_10k.txt -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O fithic.chr6_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/fithic/GM12878_chr6_5k.txt -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O fithic.chr6_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/fithic/GM12878_chr6_10k.txt -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
apa-analysis -O fithic.chr1_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/fithic/GM12878_chr1_5k.txt --vmax 2 &
apa-analysis -O fithic.chr1_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/fithic/GM12878_chr1_10k.txt --vmax 2 &
apa-analysis -O fithic.chr6_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/fithic/GM12878_chr6_5k.txt --vmax 2 &
apa-analysis -O fithic.chr6_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/fithic/GM12878_chr6_10k.txt --vmax 2 &
wait
echo "ending fithic plots"



#FitHiChip
echo "generating fithichip plots"
peak-plot -O fithichip.chr1_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/FitHiChIP/GM12878_chr1_5k.bed -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O fithichip.chr1_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/FitHiChIP/GM12878_chr1_10k.bed -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O fithichip.chr6_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/FitHiChIP/GM12878_chr6_5k.bed -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O fithichip.chr6_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/FitHiChIP/GM12878_chr6_10k.bed -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
apa-analysis -O fithichip.chr1_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/FitHiChIP/GM12878_chr1_5k.bed --vmax 2 &
apa-analysis -O fithichip.chr1_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/FitHiChIP/GM12878_chr1_10k.bed --vmax 2 &
apa-analysis -O fithichip.chr6_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/FitHiChIP/GM12878_chr6_5k.bed --vmax 2 &
apa-analysis -O fithichip.chr6_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/FitHiChIP/GM12878_chr6_10k.bed --vmax 2 &
wait
echo "ending fithichip plots"


#Peakachu
echo "generating peakachu plots"
peak-plot -O peakachu.chr1_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/peakachu/GM12878_chr1_5k.bedpe -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O peakachu.chr1_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/peakachu/GM12878_chr1_10k.bedpe -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O peakachu.chr6_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/peakachu/GM12878_chr6_5k.bedpe -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O peakachu.chr6_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/peakachu/GM12878_chr6_10k.bedpe -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
apa-analysis -O peakachu.chr1_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/peakachu/GM12878_chr1_5k.bedpe --vmax 2 &
apa-analysis -O peakachu.chr1_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/peakachu/GM12878_chr1_10k.bedpe --vmax 2 &
apa-analysis -O peakachu.chr6_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/peakachu/GM12878_chr6_5k.bedpe --vmax 2 &
apa-analysis -O peakachu.chr6_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/peakachu/GM12878_chr6_10k.bedpe --vmax 2 &
wait
echo "ending peakachu plots"


#Mustache
echo "generating mustache plots"
peak-plot -O mustache.chr1_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/mustache/GM12878_chr1_5k.tsv -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O mustache.chr1_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/mustache/GM12878_chr1_10k.tsv -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O mustache.chr6_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/mustache/GM12878_chr6_5k.tsv -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O mustache.chr6_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/mustache/GM12878_chr6_10k.tsv -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
apa-analysis -O mustache.chr1_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/mustache/GM12878_chr1_5k.tsv --vmax 2 &
apa-analysis -O mustache.chr1_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/mustache/GM12878_chr1_10k.tsv --vmax 2 &
apa-analysis -O mustache.chr6_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/mustache/GM12878_chr6_5k.tsv --vmax 2 &
apa-analysis -O mustache.chr6_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/mustache/GM12878_chr6_10k.tsv --vmax 2 &
wait
echo "ending mustache plots"


#Chromosight
echo "generating chromosight plots"
peak-plot -O chromosight.chr1_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/chromosight/GM12878_chr1_5k.tsv -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O chromosight.chr1_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/chromosight/GM12878_chr1_10k.tsv -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O chromosight.chr6_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/chromosight/GM12878_chr6_5k.tsv -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O chromosight.chr6_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/chromosight/GM12878_chr6_10k.tsv -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
apa-analysis -O chromosight.chr1_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/chromosight/GM12878_chr1_5k.tsv --vmax 2 &
apa-analysis -O chromosight.chr1_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/chromosight/GM12878_chr1_10k.tsv --vmax 2 &
apa-analysis -O chromosight.chr6_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/chromosight/GM12878_chr6_5k.tsv --vmax 2 &
apa-analysis -O chromosight.chr6_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/chromosight/GM12878_chr6_10k.tsv --vmax 2 &
wait
echo "ending chromosight plots"


#SIP
echo "generating sip plots"
peak-plot -O sip.chr1_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/sip_result/GM12878_chr1_5k.txt -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O sip.chr1_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/sip_result/GM12878_chr1_10k.txt -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O sip.chr6_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/sip_result/GM12878_chr6_5k.txt -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O sip.chr6_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/sip_result/GM12878_chr6_10k.txt -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
apa-analysis -O sip.chr1_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/sip_result/GM12878_chr1_5k.txt --vmax 2 &
apa-analysis -O sip.chr1_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/sip_result/GM12878_chr1_10k.txt --vmax 2 &
apa-analysis -O sip.chr6_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/sip_result/GM12878_chr6_5k.txt --vmax 2 &
apa-analysis -O sip.chr6_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/sip_result/GM12878_chr6_10k.txt --vmax 2 &
wait
echo "ending sip plots"

'
#cloops
echo "generating cloops plots"
peak-plot -O cloops.chr1.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/cloops/GM12878_chr1.txt -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O cloops.chr6.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/cloops/GM12878_chr6.txt -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
apa-analysis -O cloops.chr1.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/cloops/GM12878_chr1.txt --vmax 2 &
apa-analysis -O cloops.chr6.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/cloops/GM12878_chr6.txt --vmax 2 &
wait
echo "ending cloops plots"


#cloops2
echo "generating cloops2 plots"
peak-plot -O cloops2.chr1.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30.mcool::/ -I /storage/store/mohit/data/kr_norm/cloops2/GM12878_chr1.txt -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O cloops2.chr6.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30.mcool::/ -I /storage/store/mohit/data/kr_norm/cloops2/GM12878_chr6.txt -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
apa-analysis -O cloops2.chr1.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30.mcool::/ -I /storage/store/mohit/data/kr_norm/cloops2/GM12878_chr1.txt --vmax 2 &
apa-analysis -O cloops2.chr6.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30.mcool::/ -I /storage/store/mohit/data/kr_norm/cloops2/GM12878_chr6.txt --vmax 2 &
wait
echo "ending cloops2 plots"
'

#hiccups
echo "generating hiccups plots"
peak-plot -O hiccups.chr1_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/hiccups/kr_norm/GM12878_chr1_5k.bedpe -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O hiccups.chr1_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/hiccups/kr_norm/GM12878_chr1_10k.bedpe -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O hiccups.chr6_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/hiccups/kr_norm/GM12878_chr6_5k.bedpe -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O hiccups.chr6_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/hiccups/kr_norm/GM12878_chr6_10k.bedpe -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
apa-analysis -O hiccups.chr1_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/hiccups/kr_norm/GM12878_chr1_5k.bedpe --vmax 2 &
apa-analysis -O hiccups.chr1_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/hiccups/kr_norm/GM12878_chr1_10k.bedpe --vmax 2 &
apa-analysis -O hiccups.chr6_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/hiccups/kr_norm/GM12878_chr6_5k.bedpe --vmax 2 &
apa-analysis -O hiccups.chr6_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/hiccups/kr_norm/GM12878_chr6_10k.bedpe --vmax 2 &
wait
echo "ending hiccups plots"