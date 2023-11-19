#!/bin/bash

exec > deeploop.log 2>&1


./documents/DPNII_preprocessing.sh 
-1 SRR1658591_1.fastq,SRR1658592_1.fastq,SRR1658593_1.fastq,SRR1658594_1.fastq,SRR1658595_1.fastq,SRR1658596_1.fastq,SRR1658597_1.fastq,SRR1658598_1.fastq,SRR1658599_1.fastq,SRR1658600_1.fastq,SRR1658601_1.fastq,SRR1658602_1.fastq,SRR1658603_1.fastq
-2 SRR1658591_2.fastq,SRR1658592_2.fastq,SRR1658593_2.fastq,SRR1658594_2.fastq,SRR1658595_2.fastq,SRR1658596_2.fastq,SRR1658597_2.fastq,SRR1658598_2.fastq,SRR1658599_2.fastq,SRR1658600_2.fastq,SRR1658601_2.fastq,SRR1658602_2.fastq,SRR1658603_2.fastq
 -S GM12878_replicate.sam




HiCorr_path=/storage/store/mohit/data/deeploop/HiCorr/HiCorr_output
DeepLoop_outPath=/storage/store/mohit/data/deeploop/deeploop_output
chr=chr1
python3 ./prediction/predict_chromosome.py --full_matrix_dir $HiCorr_path/ --input_name anchor_2_anchor.loop.$chr --h5_file ./DeepLoop_models/CPGZ_trained/LoopDenoise.h5 --out_dir $DeepLoop_outPath/ --anchor_dir ./DeepLoop_models/ref/hg19_HindIII_anchor_bed/ --chromosome $chr --small_matrix_size 128 --step_size 128 --dummy 5 --val_cols obs exp

chr=chr6
python3 ./prediction/predict_chromosome.py --full_matrix_dir $HiCorr_path/ --input_name anchor_2_anchor.loop.$chr --h5_file ./DeepLoop_models/CPGZ_trained/LoopDenoise.h5 --out_dir $DeepLoop_outPath/ --anchor_dir ./DeepLoop_models/ref/hg19_HindIII_anchor_bed/ --chromosome $chr --small_matrix_size 128 --step_size 128 --dummy 5 --val_cols obs exp



#!/bin/bash

exec > hicorr.log 2>&1

/storage/store/mohit/data/HiCorr/HiCorr_DPNIII.sh ./DPNII_HiCorr_ref /storage/store/mohit/data/HiCorr/bin/DPNII /storage/store/mohit/data/HiCorr/frag_loop.GM12878_primary.cis /storage/store/mohit/data/HiCorr/frag_loop.GM12878_primary.trans /storage/store/mohit/data/HiCorr/HiCorr_Result/hiccorr hg19