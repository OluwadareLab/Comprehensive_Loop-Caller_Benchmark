#!/bin/bash

touch convertToBED.log
exec > convertToBED.log 2>&1


library("FIREcaller")
setwd('/home/ubuntu/loop_analyzer/data/hub/firecaller/')
file.list <- paste0('GSE63525_GM12878_insitu_primary_30.hic')
gb<-'hg19'
map_file<-'MboI_hg19_40Kb_encodeBL_F_GC_M_FULL.txt.gz'
juicer_version <- '/home/ubuntu/loop_analyzer/data/hub/firecaller/juicer_1.22.01.jar'
FIREcaller(file.list, gb, map_file, juicer_tools_version=juicer_version, binsize = 40000, upper_cis = 200000, normalized = FALSE, rm_mhc = TRUE, rm_EBL = TRUE, rm_perc = 0.25, dist = 'poisson', alpha = 0.05, plots = TRUE, diff_fires = TRUE)


Hippo_chr1 <- read.table("GM12878_chr21.gz", header = FALSE)

# A subset contact matrix from 100 ~ 110th rows and 100 ~ 110th columns
Hippo_chr1[100:110,100:110]


import numpy as np
import hicstraw

result = hicstraw.straw('observed', 'NONE', '/home/ubuntu/loop_analyzer/data/hub/GSE63525_GM12878_insitu_primary_30.hic', '1', '1', 'BP', 10000)
out_file = open("GM12878_primary_chr1_10K.txt", "w+")
for i in range(len(result)):
	out_file.write("{0}\t{1}\t{2}".format(result[i].binX, result[i].binY, result[i].counts))
	print()
out_file.close()

result = hicstraw.straw('observed', 'NONE', '/home/ubuntu/loop_analyzer/data/hub/GSE63525_GM12878_insitu_primary_30.hic', '6', '6', 'BP', 10000)
out_file = open("GM12878_primary_chr6_10K.txt", "w+")
for i in range(len(result)):
	out_file.write("{0}\t{1}\t{2}".format(result[i].binX, result[i].binY, result[i].counts))
	print()
out_file.close()