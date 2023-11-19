#!/bin/bash

touch replicate.log
exec > replicate.log 2>&1

bowtie2 -x index_hg19 -1 SRR1658591_1.fastq,SRR1658592_1.fastq,SRR1658593_1.fastq,SRR1658594_1.fastq,SRR1658595_1.fastq,SRR1658596_1.fastq,SRR1658597_1.fastq,SRR1658598_1.fastq,SRR1658599_1.fastq,SRR1658600_1.fastq,SRR1658601_1.fastq,SRR1658602_1.fastq,SRR1658603_1.fastq -2 SRR1658591_2.fastq,SRR1658592_2.fastq,SRR1658593_2.fastq,SRR1658594_2.fastq,SRR1658595_2.fastq,SRR1658596_2.fastq,SRR1658597_2.fastq,SRR1658598_2.fastq,SRR1658599_2.fastq,SRR1658600_2.fastq,SRR1658601_2.fastq,SRR1658602_2.fastq,SRR1658603_2.fastq -S GM12878_replicate.sam

samtools view -S -b GM12878_replicate.sam > GM12878_replicate.bam

samtools view -b -F 0x4 -q 30 GM12878_replicate.bam > GM12878_replicate_30.bam

bedtools bamtobed -i GM12878_replicate_30.bam > GM12878_replicate_30.bed

bedtools bamtobed -bedpe -i GM12878_replicate_30.bam > GM12878_replicate_30.bedpe