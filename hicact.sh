#!/bin/bash

touch hicact.log
exec > hicact.log 2>&1

#===================================================
#=======================Primary=====================
#===================================================


start=$(date +%s)
Rscrip library(hicACT)
input_file <- paste0('./chr1/FitHiC.spline_pass1.res10000.significances.txt')
Rscrip hicACT(infile=input_file, kb=10, h=20, thres=1.0e-6, outdir="./result", outname="ACT_adjusted_primary_10K_chr1")
end=$(date +%s)
echo "At 10K primary chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
Rscrip library(hicACT)
Rscrip hicACT(infile="/home/ubuntu/loop_analyzer/data/hub/primary/fithic/chr1/FitHiC.spline_pass1.res5000.significances.txt", kb=5, h=40, thres=1.0e-6, outdir="/home/ubuntu/loop_analyzer/data/hub/primary/hicact/", outname="ACT_adjusted_primary_5K_chr1")
end=$(date +%s)
echo "At 5K primary chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
Rscrip library(hicACT)
Rscrip hicACT(infile="/home/ubuntu/loop_analyzer/data/hub/primary/fithic/chr6/FitHiC.spline_pass1.res10000.significances.txt", kb=10, h=20, thres=1.0e-6, outdir="/home/ubuntu/loop_analyzer/data/hub/primary/hicact/", outname="ACT_adjusted_primary_10K_chr6")
end=$(date +%s)
echo "At 10K primary chr 6 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
Rscrip library(hicACT)
Rscrip hicACT(infile="/home/ubuntu/loop_analyzer/data/hub/primary/fithic/chr6/FitHiC.spline_pass1.res5000.significances.txt", kb=5, h=40, thres=1.0e-6, outdir="/home/ubuntu/loop_analyzer/data/hub/primary/hicact/", outname="ACT_adjusted_primary_5K_chr6")
end=$(date +%s)
echo "At 5K primary chr 6 Elapsed Time: $(($end-$start)) seconds"


#===================================================
#======================Replicate====================
#===================================================


start=$(date +%s)
Rscrip library(hicACT)
Rscrip hicACT(infile="/home/ubuntu/loop_analyzer/data/hub/replicate/fithic/chr1/FitHiC.spline_pass1.res10000.significances.txt", kb=10, h=20, thres=1.0e-6, outdir="/home/ubuntu/loop_analyzer/data/hub/replicate/hicact/", outname="ACT_adjusted_replicate_10K_chr1")
end=$(date +%s)
echo "At 10K replicate chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
Rscrip library(hicACT)
Rscrip hicACT(infile="/home/ubuntu/loop_analyzer/data/hub/replicate/fithic/chr1/FitHiC.spline_pass1.res5000.significances.txt", kb=5, h=40, thres=1.0e-6, outdir="/home/ubuntu/loop_analyzer/data/hub/replicate/hicact/", outname="ACT_adjusted_replicate_5K_chr1")
end=$(date +%s)
echo "At 5K replicate chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
Rscrip library(hicACT)
Rscrip hicACT(infile="/home/ubuntu/loop_analyzer/data/hub/replicate/fithic/chr6/FitHiC.spline_pass1.res10000.significances.txt", kb=10, h=20, thres=1.0e-6, outdir="/home/ubuntu/loop_analyzer/data/hub/replicate/hicact/", outname="ACT_adjusted_replicate_10K_chr6")
end=$(date +%s)
echo "At 10K replicate chr 6 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
Rscrip library(hicACT)
Rscrip hicACT(infile="/home/ubuntu/loop_analyzer/data/hub/replicate/fithic/chr6/FitHiC.spline_pass1.res5000.significances.txt", kb=5, h=40, thres=1.0e-6, outdir="/home/ubuntu/loop_analyzer/data/hub/replicate/hicact/", outname="ACT_adjusted_replicate_5K_chr6")
end=$(date +%s)
echo "At 5K replicate chr 6 Elapsed Time: $(($end-$start)) seconds"



#===================================================
#========================K562=======================
#===================================================

start=$(date +%s)
Rscrip library(hicACT)
Rscrip hicACT(infile="/home/ubuntu/loop_analyzer/data/hub/K562/fithic/chr1/FitHiC.spline_pass1.res10000.significances.txt", kb=10, h=20, thres=1.0e-6, outdir="/home/ubuntu/loop_analyzer/data/hub/K562/hicact/", outname="ACT_adjusted_K562_10K_chr1")
end=$(date +%s)
echo "At 10K K562 chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
Rscrip library(hicACT)
Rscrip hicACT(infile="/home/ubuntu/loop_analyzer/data/hub/K562/fithic/chr1/FitHiC.spline_pass1.res5000.significances.txt", kb=5, h=40, thres=1.0e-6, outdir="/home/ubuntu/loop_analyzer/data/hub/K562/hicact/", outname="ACT_adjusted_K562_5K_chr1")
end=$(date +%s)
echo "At 5K K562 chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
Rscrip library(hicACT)
Rscrip hicACT(infile="/home/ubuntu/loop_analyzer/data/hub/K562/fithic/chr6/FitHiC.spline_pass1.res10000.significances.txt", kb=10, h=20, thres=1.0e-6, outdir="/home/ubuntu/loop_analyzer/data/hub/K562/hicact/", outname="ACT_adjusted_K562_10K_chr6")
end=$(date +%s)
echo "At 10K K562 chr 6 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
Rscrip library(hicACT)
Rscrip hicACT(infile="/home/ubuntu/loop_analyzer/data/hub/K562/fithic/chr6/FitHiC.spline_pass1.res5000.significances.txt", kb=5, h=40, thres=1.0e-6, outdir="/home/ubuntu/loop_analyzer/data/hub/K562/hicact/", outname="ACT_adjusted_K562_5K_chr6")
end=$(date +%s)
echo "At 5K K562 chr 6 Elapsed Time: $(($end-$start)) seconds"


library(hicACT)
input_file <- paste0('./GM12878_primary_30_chr1_10k.txt')
hicACT(infile=input_file, kb=10, h=20, thres=0.05, outdir="./", outname="ACT_primary_10K_chr1")

library(hicACT)
input_file <- paste0('GM12878_primary_30_chr6_10k_partial.txt')
hicACT(infile=input_file, kb=10, h=20, thres=0.05, outdir="./partial/", outname="ACT_partial_10k_chr6")