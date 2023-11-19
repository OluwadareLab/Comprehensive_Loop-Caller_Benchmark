#!/bin/bash

touch neo_download.log
exec > neo_download.log 2>&1

wget -P ./../ https://ftp.ncbi.nlm.nih.gov/geo/series/GSE63nnn/GSE63525/suppl/GSE63525_GM12878_insitu_primary_30.hic &
wget -P ./../ https://ftp.ncbi.nlm.nih.gov/geo/series/GSE63nnn/GSE63525/suppl/GSE63525_GM12878_insitu_replicate_30.hic &
wget -P ./../ https://ftp.ncbi.nlm.nih.gov/geo/series/GSE63nnn/GSE63525/suppl/GSE63525_K562_combined_30.hic &
wait

hicConvertFormat -m /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_primary_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_primary_30_chr1.cool --resolutions 0 --chromosome 1 &
hicConvertFormat -m /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_primary_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_primary_30_chr6.cool --resolutions 0 --chromosome 6 &

hicConvertFormat -m /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_replicate_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_replicate_30_chr1.cool --resolutions 0 --chromosome 1 &
hicConvertFormat -m /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_replicate_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_replicate_30_chr6.cool --resolutions 0 --chromosome 6 &

hicConvertFormat -m /home/ubuntu/loop_analyzer/data/GSE63525_K562_combined_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/GSE63525_K562_combined_30_chr1.cool --resolutions 0 --chromosome 1 &
hicConvertFormat -m /home/ubuntu/loop_analyzer/data/GSE63525_K562_combined_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/GSE63525_K562_combined_30_chr6.cool --resolutions 0 --chromosome 6 &
wait


predictSV-single-resolution -H SKNAS-MboI-allReps-filtered.5kb.cool -O test.1k.txt -g hg19 --balance-type ICE --output-format NeoLoopFinder --region-size 5000	  
assemble-complexSVs -O SKNMC -B SKNMC-EagleC.SV.txt --balance-type ICE --protocol insitu --nproc 8 -H SKNMC-MboI-allReps-filtered.mcool::resolutions/10000 SKNMC-MboI-allReps-filtered.mcool::resolutions/5000
neoloop-caller -O SKNMC.neo-loops.txt --assembly SKNMC.assemblies.txt --balance-type ICE --protocol insitu --prob 0.95 --nproc 8 -H SKNMC-MboI-allReps-filtered.mcool::resolutions/10000 SKNMC-MboI-allReps-filtered.mcool::resolutions/5000





predictSV-single-resolution -H GM12878_primary_30.cool -O GM12878_primary_30_chr21_10000.SVs.txt -g hg19 --balance-type Raw --output-format NeoLoopFinder -C chr21 >> SVs.log
assemble-complexSVs -O GSE63525_GM12878_insitu_primary_30_chr1_10KB -B GSE63525_GM12878_insitu_primary_30_chr1.SVs.10KB.txt --balance-type ICE --protocol insitu --nproc 8 -H /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_primary_30_chr1_0.mcool::/resolutions/10000
neoloop-caller -O GSE63525_GM12878_insitu_primary_30_chr1_10KB.neo-loops.txt --assembly GSE63525_GM12878_insitu_primary_30_chr1_10KB.assemblies.txt --balance-type ICE --protocol insitu --prob 0.95 --nproc 8 -H GSE63525_GM12878_insitu_primary_30_chr1.mcool::resolutions/5000


A hidden Markov random field-based Bayesian method for the detection of long-range chromosomal interactions in Hi-C data



#!/bin/bash
exec > convert.log 2>&1

hicConvertFormat -m /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_primary_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_primary_30_chr1.cool --resolutions 5000 --chromosome 1 &
hicConvertFormat -m /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_primary_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_primary_30_chr6.cool --resolutions 5000 --chromosome 6 &
hicConvertFormat -m /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_primary_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_primary_30_chr1.cool --resolutions 10000 --chromosome 1 &
hicConvertFormat -m /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_primary_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_primary_30_chr6.cool --resolutions 10000 --chromosome 6 &

hicConvertFormat -m /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_replicate_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_replicate_30_chr1.cool --resolutions 5000 --chromosome 1 &
hicConvertFormat -m /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_replicate_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_replicate_30_chr6.cool --resolutions 5000 --chromosome 6 &
hicConvertFormat -m /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_replicate_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_replicate_30_chr1.cool --resolutions 10000 --chromosome 1 &
hicConvertFormat -m /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_replicate_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_replicate_30_chr6.cool --resolutions 10000 --chromosome 6 &
wait

hicConvertFormat -m /home/ubuntu/loop_analyzer/data/GSE63525_K562_combined_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/GSE63525_K562_combined_30_chr1.cool --resolutions 5000 --chromosome 1 &
hicConvertFormat -m /home/ubuntu/loop_analyzer/data/GSE63525_K562_combined_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/GSE63525_K562_combined_30_chr6.cool --resolutions 5000 --chromosome 6 &
hicConvertFormat -m /home/ubuntu/loop_analyzer/data/GSE63525_K562_combined_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/GSE63525_K562_combined_30_chr1.cool --resolutions 10000 --chromosome 1 &
hicConvertFormat -m /home/ubuntu/loop_analyzer/data/GSE63525_K562_combined_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/GSE63525_K562_combined_30_chr6.cool --resolutions 10000 --chromosome 6 &
wait



hicConvertFormat -m /home/ubuntu/loop_analyzer/data/hub/GSE63525_GM12878_insitu_primary_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/hub/neoloopfinde/GM12878_primary_30.cool --resolutions 0




predictSV-single-resolution --hic GM12878_primary_30_10k.cool -O GM12878.10k.SVs.txt -g hg19 -C 1 6 --maximum-size 100000 --balance-type Raw --add-log-header --logFile eaglec-ice-10k.log --output-format NeoLoopFinder




predictSV --hic-5k GM12878_primary_30.mcool::/resolutions/5000 --hic-10k GM12878_primary_30.mcool::/resolutions/10000 --hic-50k GM12878_primary_30.mcool::/resolutions/50000 -O GM12878_primary -g hg19 --balance-type Raw --output-format NeoLoopFinder --prob-cutoff-5k 0.8 --prob-cutoff-10k 0.8 --prob-cutoff-50k 0.99999 >> GM12878_primary_SVs.log




predictSV-single-resolution --hic GM12878_primary_30_10k.cool -O GM12878_primary_30.SVs.chr1.10k.txt -g hg19 -C 1 --maximum-size 100000 --balance-type Raw --add-log-header --logFile GM12878_primary_30.SVs.chr1.10k.log --output-format NeoLoopFinder



predictSV --hic-5k /storage/store/mohit/data/GM12878_primary_30.mcool::/resolutions/5000 --hic-10k /storage/store/mohit/data/GM12878_primary_30.mcool::/resolutions/10000 -O GM12878 -g hg19 --balance-type NONE --output-format NeoLoopFinder --prob-cutoff-5k 0.8 --prob-cutoff-10k 0.8