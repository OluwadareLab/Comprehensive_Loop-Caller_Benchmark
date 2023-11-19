#!/bin/bash

exec > ctcf.log 2>&1

JuicerJarExec='juicer_tools_1.13.01.jar'
RefGenome='hg19'
motif='GM12878_CTCF_orientation.bed'

interaction='Interactions.bed'
out_dir='chromosight'

cut -f1-6 $interaction > $motif

java -jar ${JuicerJarExec} motifs ${RefGenome} ${out_dir} ${motif}

java -jar juicer_tools_1.13.01.jar motifs hg19 chromosight motifs.bed


java -jar juicer_tools_1.13.01.jar motifs hg19 /storage/store/mohit/data/ctcf/bed /storage/store/mohit/data/replicate/lasca/GM12878_chr1_5k.bedpe

java -jar juicer_tools_1.13.01.jar motifs hg19 /storage/store/mohit/data/ctcf/bed loops.txt hg19.motifs.txt