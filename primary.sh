#!/bin/bash

touch primary.log
exec > primary.log 2>&1

bowtie2 -x index_hg19 -1 SRR1658570_1.fastq,SRR1658571_1.fastq,SRR1658572_1.fastq,SRR1658573_1.fastq,SRR1658574_1.fastq,SRR1658575_1.fastq,SRR1658576_1.fastq,SRR1658577_1.fastq,SRR1658578_1.fastq,SRR1658579_1.fastq,SRR1658580_1.fastq,SRR1658581_1.fastq,SRR1658582_1.fastq,SRR1658583_1.fastq,SRR1658584_1.fastq,SRR1658585_1.fastq,SRR1658586_1.fastq,SRR1658587_1.fastq,SRR1658588_1.fastq,SRR1658589_1.fastq,SRR1658590_1.fastq -2 SRR1658570_2.fastq,SRR1658571_2.fastq,SRR1658572_2.fastq,SRR1658573_2.fastq,SRR1658574_2.fastq,SRR1658575_2.fastq,SRR1658576_2.fastq,SRR1658577_2.fastq,SRR1658578_2.fastq,SRR1658579_2.fastq,SRR1658580_2.fastq,SRR1658581_2.fastq,SRR1658582_2.fastq,SRR1658583_2.fastq,SRR1658584_2.fastq,SRR1658585_2.fastq,SRR1658586_2.fastq,SRR1658587_2.fastq,SRR1658588_2.fastq,SRR1658589_2.fastq,SRR1658590_2.fastq -S GM12878_primary.sam

samtools view -S -b GM12878_primary.sam > GM12878_primary.bam

samtools view -b -F 0x4 -q 30 GM12878_primary.bam > GM12878_primary_30.bam

bedtools bamtobed -i GM12878_primary_30.bam > GM12878_primary_30.bed

bedtools bamtobed -bedpe -i GM12878_primary_30.bam > GM12878_primary_30.bedpe