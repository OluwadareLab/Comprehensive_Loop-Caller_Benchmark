#!/bin/bash

#touch hicexplorer_download.log
touch hicexplorer.log

#exec > hicexplorer_download.log 2>&1

#wget -P ./../primary/ https://ftp.ncbi.nlm.nih.gov/geo/series/GSE63nnn/GSE63525/suppl/GSE63525_GM12878_insitu_primary_30.hic &
#wget -P ./../replicate/ https://ftp.ncbi.nlm.nih.gov/geo/series/GSE63nnn/GSE63525/suppl/GSE63525_GM12878_insitu_replicate_30.hic &
#wget -P ./../K562/ https://ftp.ncbi.nlm.nih.gov/geo/series/GSE63nnn/GSE63525/suppl/GSE63525_K562_combined_30.hic &
#wait

#hicConvertFormat -m /home/ubuntu/loop/data/primary/GSE63525_GM12878_insitu_primary_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/primary/hicexplorer/GSE63525_GM12878_insitu_primary_30_5K_chr1.cool --resolutions 5000 --chromosome 1 &
#hicConvertFormat -m /home/ubuntu/loop/data/primary/GSE63525_GM12878_insitu_primary_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/primary/hicexplorer/GSE63525_GM12878_insitu_primary_30_5K_chr6.cool --resolutions 5000 --chromosome 6 &
#hicConvertFormat -m /home/ubuntu/loop/data/primary/GSE63525_GM12878_insitu_primary_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/primary/hicexplorer/GSE63525_GM12878_insitu_primary_30_10K_chr1.cool --resolutions 10000 --chromosome 1 &
#hicConvertFormat -m /home/ubuntu/loop/data/primary/GSE63525_GM12878_insitu_primary_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/primary/hicexplorer/GSE63525_GM12878_insitu_primary_30_10K_chr6.cool --resolutions 10000 --chromosome 6 &

#hicConvertFormat -m /home/ubuntu/loop/data/replicate/GSE63525_GM12878_insitu_replicate_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/replicate/hicexplorer/GSE63525_GM12878_insitu_replicate_30_5K_chr1.cool --resolutions 5000 --chromosome 1 &
#hicConvertFormat -m /home/ubuntu/loop/data/replicate/GSE63525_GM12878_insitu_replicate_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/replicate/hicexplorer/GSE63525_GM12878_insitu_replicate_30_5K_chr6.cool --resolutions 5000 --chromosome 6 &
#hicConvertFormat -m /home/ubuntu/loop/data/replicate/GSE63525_GM12878_insitu_replicate_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/replicate/hicexplorer/GSE63525_GM12878_insitu_replicate_30_10K_chr1.cool --resolutions 10000 --chromosome 1 &
#hicConvertFormat -m /home/ubuntu/loop/data/replicate/GSE63525_GM12878_insitu_replicate_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/replicate/hicexplorer/GSE63525_GM12878_insitu_replicate_30_10K_chr6.cool --resolutions 10000 --chromosome 6 &
#wait

#hicConvertFormat -m /home/ubuntu/loop/data/K562/GSE63525_K562_combined_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/K562/hicexplorer/GSE63525_K562_combined_30_5K_chr1.cool --resolutions 5000 --chromosome 1 &
#hicConvertFormat -m /home/ubuntu/loop/data/K562/GSE63525_K562_combined_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/K562/hicexplorer/GSE63525_K562_combined_30_10K_chr6.cool --resolutions 10000 --chromosome 6 &
#hicConvertFormat -m /home/ubuntu/loop/data/K562/GSE63525_K562_combined_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/K562/hicexplorer/GSE63525_K562_combined_30_5K_chr1.cool --resolutions 5000 --chromosome 1 &
#hicConvertFormat -m /home/ubuntu/loop/data/K562/GSE63525_K562_combined_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/K562/hicexplorer/GSE63525_K562_combined_30_10K_chr6.cool --resolutions 10000 --chromosome 6 &
#wait 


exec > hicexplorer.log 2>&1

#===================================================
#=======================Primary=====================
#===================================================

start=$(date +%s)
hicDetectLoops -m /home/ubuntu/loop/data/primary/hicexplorer/GSE63525_GM12878_insitu_primary_30_5K_chr1_5000.cool -o /home/ubuntu/loop/data/primary/hicexplorer/GSE63525_GM12878_insitu_primary_30_5K_chr1.bedgraph --chromosomes 1
end=$(date +%s)
echo "At 5K chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m /home/ubuntu/loop/data/primary/hicexplorer/GSE63525_GM12878_insitu_primary_30_10K_chr1_10000.cool -o /home/ubuntu/loop/data/primary/hicexplorer/GSE63525_GM12878_insitu_primary_30_10K_chr1.bedgraph --chromosomes 1
end=$(date +%s)
echo "At 10K chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m /home/ubuntu/loop/data/primary/hicexplorer/GSE63525_GM12878_insitu_primary_30_5K_chr6_5000.cool -o /home/ubuntu/loop/data/primary/hicexplorer/GSE63525_GM12878_insitu_primary_30_5K_chr6.bedgraph --chromosomes 6
end=$(date +%s)
echo "At 5K chr 6 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m /home/ubuntu/loop/data/primary/hicexplorer/GSE63525_GM12878_insitu_primary_30_10K_chr6_10000.cool -o /home/ubuntu/loop/data/primary/hicexplorer/GSE63525_GM12878_insitu_primary_30_10K_chr6.bedgraph --chromosomes 6
end=$(date +%s)
echo "At 10K chr 6 Elapsed Time: $(($end-$start)) seconds"




#===================================================
#=======================Replicate=====================
#===================================================

start=$(date +%s)
hicDetectLoops -m /home/ubuntu/loop/data/replicate/hicexplorer/GSE63525_GM12878_insitu_replicate_30_5K_chr1_5000.cool -o /home/ubuntu/loop/data/replicate/hicexplorer/GSE63525_GM12878_insitu_replicate_30_5K_chr1.bedgraph --chromosomes 1
end=$(date +%s)
echo "At 5K che 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m /home/ubuntu/loop/data/replicate/hicexplorer/GSE63525_GM12878_insitu_replicate_30_10K_chr1_10000.cool -o /home/ubuntu/loop/data/replicate/hicexplorer/GSE63525_GM12878_insitu_replicate_30_10K_chr1.bedgraph --chromosomes 1
end=$(date +%s)
echo "At 10K chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m /home/ubuntu/loop/data/replicate/hicexplorer/GSE63525_GM12878_insitu_replicate_30_5K_chr6_5000.cool -o /home/ubuntu/loop/data/replicate/hicexplorer/GSE63525_GM12878_insitu_replicate_30_5K_chr6.bedgraph --chromosomes 6
end=$(date +%s)
echo "At 5K che 6 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m /home/ubuntu/loop/data/replicate/hicexplorer/GSE63525_GM12878_insitu_replicate_30_10K_chr6_10000.cool -o /home/ubuntu/loop/data/replicate/hicexplorer/GSE63525_GM12878_insitu_replicate_30_10K_chr6.bedgraph --chromosomes 6
end=$(date +%s)
echo "At 10K chr 6 Elapsed Time: $(($end-$start)) seconds"




#===================================================
#=======================K562=====================
#===================================================

start=$(date +%s)
hicDetectLoops -m /home/ubuntu/loop/data/K562/hicexplorer/GSE63525_K562_combined_30_5K_chr1_5000.cool -o /home/ubuntu/loop/data/K562/hicexplorer/GSE63525_K562_combined_30_5K_chr1.bedgraph --chromosomes 1
end=$(date +%s)
echo "At 5K chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m /home/ubuntu/loop/data/K562/hicexplorer/GSE63525_K562_combined_30_10K_chr1_10000.cool -o /home/ubuntu/loop/data/K562/hicexplorer/GSE63525_K562_combined_30_10K_chr1.bedgraph --chromosomes 1
end=$(date +%s)
echo "At 10K chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m /home/ubuntu/loop/data/K562/hicexplorer/GSE63525_K562_combined_30_5K_chr6_5000.cool -o /home/ubuntu/loop/data/K562/hicexplorer/GSE63525_K562_combined_30_5K_chr6.bedgraph --chromosomes 6
end=$(date +%s)
echo "At 5K chr 6 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m /home/ubuntu/loop/data/K562/hicexplorer/GSE63525_K562_combined_30_10K_chr6_10000.cool -o /home/ubuntu/loop/data/K562/hicexplorer/GSE63525_K562_combined_30_10K_chr6.bedgraph --chromosomes 6
end=$(date +%s)
echo "At 10K chr 6 Elapsed Time: $(($end-$start)) seconds"






start=$(date +%s)
hicDetectLoops -m /home/ubuntu/loop/data/K562/hicexplorer/GSE63525_K562_combined_30_5K_chr6_5000.cool -o /home/ubuntu/loop/data/K562/hicexplorer/GSE63525_K562_combined_30_5K_chr6.bedgraph --chromosomes 6
end=$(date +%s)
echo "At 5K chr 6 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m /home/ubuntu/loop/data/K562/hicexplorer/GSE63525_K562_combined_30_10K_chr1_10000.cool -o /home/ubuntu/loop/data/K562/hicexplorer/GSE63525_K562_combined_30_10K_chr1.bedgraph --chromosomes 1
end=$(date +%s)
echo "At 10K chr 1 Elapsed Time: $(($end-$start)) seconds"



hicConvertFormat -m GSE63525_GM12878_insitu_replicate_30.hic --inputFormat hic --outputFormat cool -o GM12878_10000.cool --resolutions 10000



=============================================
=================Normalized==================
=============================================


#!/bin/bash

exec > hicexplorer_normKR.log 2>&1

start=$(date +%s)
hicDetectLoops -m GM12878_primary_30_KR_5000.cool -o ./hicexplorer/GM12878_primary_30_KR_5000_chr1.hicexplorer.bedgraph --chromosomes 1
end=$(date +%s)
echo "primary_normKR chr 1 @5k elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m GM12878_primary_30_KR_5000.cool -o ./hicexplorer/GM12878_primary_30_KR_5000_chr6.hicexplorer.bedgraph --chromosomes 6
end=$(date +%s)
echo "primary_normKR chr 6 @5k elapsed time:  $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m GM12878_primary_30_KR_10000.cool -o ./hicexplorer/GM12878_primary_30_KR_10000_chr1.hicexplorer.bedgraph --chromosomes 1
end=$(date +%s)
echo "primary_normKR chr 1 @10k elapsed time:  $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m GM12878_primary_30_KR_10000.cool -o ./hicexplorer/GM12878_primary_30_KR_10000_chr6.hicexplorer.bedgraph --chromosomes 6
end=$(date +%s)
echo "primary_normKR chr 6 @10k elapsed time:  $(($end-$start)) seconds"


#=============================================
#==================Primary====================
#=============================================

#!/bin/bash

exec > hicexplorer.log 2>&1

start=$(date +%s)
hicDetectLoops -m /storage/store/mohit/data/GM12878_primary_30_5000.cool -o ./hicexplorer/GM12878_chr1_5k.bedgraph --chromosomes 1
end=$(date +%s)
echo "#primary chr 1 @5k elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m /storage/store/mohit/data/GM12878_primary_30_5000.cool -o ./hicexplorer/GM12878_chr6_5k.bedgraph --chromosomes 6
end=$(date +%s)
echo "#primary chr 6 @5k elapsed time:  $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m /storage/store/mohit/data/GM12878_primary_30_10000.cool -o ./hicexplorer/GM12878_chr1_10k.bedgraph --chromosomes 1
end=$(date +%s)
echo "#primary chr 1 @10k elapsed time:  $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m /storage/store/mohit/data/GM12878_primary_30_10000.cool -o ./hicexplorer/GM12878_chr6_10k.bedgraph --chromosomes 6
end=$(date +%s)
echo "#primary chr 6 @10k elapsed time:  $(($end-$start)) seconds"




#=============================================
#=================Normalized==================
#=============================================

#!/bin/bash

exec > hicexplorer_normKR.log 2>&1

start=$(date +%s)
hicDetectLoops -m GM12878_primary_30_KR_5000.cool -o ./hicexplorer/GM12878_chr1_5k.bedgraph --chromosomes 1 -t 128
end=$(date +%s)
echo "primary_normKR chr 1 @5k elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m GM12878_primary_30_KR_5000.cool -o ./hicexplorer/GM12878_chr6_5k.bedgraph --chromosomes 6 -t 128
end=$(date +%s)
echo "primary_normKR chr 6 @5k elapsed time:  $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m GM12878_primary_30_KR_10000.cool -o ./hicexplorer/GM12878_chr1_10k.bedgraph --chromosomes 1 -t 128
end=$(date +%s)
echo "primary_normKR chr 1 @10k elapsed time:  $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m GM12878_primary_30_KR_10000.cool -o ./hicexplorer/GM12878_chr6_10k.bedgraph --chromosomes 6 -t 128
end=$(date +%s)
echo "primary_normKR chr 6 @10k elapsed time:  $(($end-$start)) seconds"


#=============================================
#=================Replicate==================
#=============================================

#!/bin/bash

exec > hicexplorer_replicate.log 2>&1

start=$(date +%s)
hicDetectLoops -m GM12878_replicate_5000.cool -o ./hicexplorer/GM12878_replicate_5000_chr1.hicexplorer.bedgraph --chromosomes 1
end=$(date +%s)
echo "#replicate chr 1 @5k elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m GM12878_replicate_5000.cool -o ./hicexplorer/GM12878_replicate_5000_chr6.hicexplorer.bedgraph --chromosomes 6
end=$(date +%s)
echo "#replicate chr 6 @5k elapsed time:  $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m GM12878_replicate_10000.cool -o ./hicexplorer/GM12878_replicate_10000_chr1.hicexplorer.bedgraph --chromosomes 1
end=$(date +%s)
echo "#replicate chr 1 @10k elapsed time:  $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m GM12878_replicate_10000.cool -o ./hicexplorer/GM12878_replicate_10000_chr6.hicexplorer.bedgraph --chromosomes 6
end=$(date +%s)
echo "#replicate chr 6 @10k elapsed time:  $(($end-$start)) seconds"




#=============================================
#============NormalizedByChromosome===========
#=============================================

#!/bin/bash

exec > hicexplorer_normKRChr.log 2>&1

start=$(date +%s)
hicDetectLoops -m GM12878_primary_30_KR_5000.cool -o ./hicexplorer/GM12878_primary_30_KR_5000_chr1.hicexplorer.bedgraph --chromosomes 1
end=$(date +%s)
echo "primary_normKR chr 1 @5k elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m GM12878_primary_30_KR_5000.cool -o ./hicexplorer/GM12878_primary_30_KR_5000_chr6.hicexplorer.bedgraph --chromosomes 6
end=$(date +%s)
echo "primary_normKR chr 6 @5k elapsed time:  $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m GM12878_primary_30_KR_10000.cool -o ./hicexplorer/GM12878_primary_30_KR_10000_chr1.hicexplorer.bedgraph --chromosomes 1
end=$(date +%s)
echo "primary_normKR chr 1 @10k elapsed time:  $(($end-$start)) seconds"

start=$(date +%s)
hicDetectLoops -m GM12878_primary_30_KR_10000.cool -o ./hicexplorer/GM12878_primary_30_KR_10000_chr6.hicexplorer.bedgraph --chromosomes 6
end=$(date +%s)
echo "primary_normKR chr 6 @10k elapsed time:  $(($end-$start)) seconds"


#!/bin/bash

exec > hicexplorer_primary.log 2>&1

hicConvertFormat -m GM12878_primary_30_5000.cool --inputFormat cool --outputFormat cool -o GM12878_primary_chr1_5000.cool --correction_name KR --chromosome 1 &
hicConvertFormat -m GM12878_primary_30_5000.cool --inputFormat cool --outputFormat cool -o GM12878_primary_chr6_5000.cool --correction_name KR --chromosome 6 &
hicConvertFormat -m GM12878_primary_30_10000.cool --inputFormat cool --outputFormat cool -o GM12878_primary_chr1_10000.cool --correction_name KR --chromosome 1 &
hicConvertFormat -m GM12878_primary_30_10000.cool --inputFormat cool --outputFormat cool -o GM12878_primary_chr6_10000.cool --correction_name KR --chromosome 6 &
wait


my_log <- file("cooler2bedpe.log", open = 'a')
sink(my_log, append = TRUE, type = "output")
sink(my_log, append = TRUE, type = "message")

library(HiCcompare)

v_input <- cooler2bedpe('GM12878_primary_chr1_5000.cool')
v_input <- as.data.frame(v_input$cis)
v_output <- file('GM12878_primary_chr1_5000.bedpe', open = 'a')
write.table(v_input, v_output)

v_input <- cooler2bedpe('GM12878_primary_chr1_10000.cool')
v_input <- as.data.frame(v_input$cis)
v_output <- file('GM12878_primary_chr1_10000.bedpe', open = 'a')
write.table(v_input, v_output)

v_input <- cooler2bedpe('GM12878_primary_chr6_5000.cool')
v_input <- as.data.frame(v_input$cis)
v_output <- file('GM12878_primary_chr6_5000.bedpe', open = 'a')
write.table(v_input, v_output)

v_input <- cooler2bedpe('GM12878_primary_chr6_10000.cool')
v_input <- as.data.frame(v_input$cis)
v_output <- file('GM12878_primary_chr6_10000.bedpe', open = 'a')
write.table(v_input, v_output)



output = open("GM12878_primary_chr1_5k.bedpe", "w+")
with open('GM12878_primary_chr1_5000.bedpe', "r") as input:
    next(input)
    lines = input.readlines()
    for line in lines:
        row = line.split(" ")
        new_row = ["chr1", (row[2]), row[3], "chr1",
                   (row[5]), row[6], "cis", row[7]]
        output.writelines('\t'.join(new_row))
output.close()

output = open("GM12878_primary_chr1_10k.bedpe", "w+")
with open('GM12878_primary_chr1_10000.bedpe', "r") as input:
    next(input)
    lines = input.readlines()
    for line in lines:
        row = line.split(" ")
        new_row = ["chr1", (row[2]), row[3], "chr1",
                   (row[5]), row[6], "cis", row[7]]
        output.writelines('\t'.join(new_row))
output.close()

output = open("GM12878_primary_chr6_5k.bedpe", "w+")
with open('GM12878_primary_chr6_5000.bedpe', "r") as input:
    next(input)
    lines = input.readlines()
    for line in lines:
        row = line.split(" ")
        new_row = ["chr6", (row[2]), row[3], "chr6",
                   (row[5]), row[6], "cis", row[7]]
        output.writelines('\t'.join(new_row))
output.close()

output = open("GM12878_primary_chr6_10k.bedpe", "w+")
with open('GM12878_primary_chr6_10000.bedpe', "r") as input:
    next(input)
    lines = input.readlines()
    for line in lines:
        row = line.split(" ")
        new_row = ["chr6", (row[2]), row[3], "chr6",
                   (row[5]), row[6], "cis", row[7]]
        output.writelines('\t'.join(new_row))
output.close()



hicConvertFormat -m /storage/store/mohit/data/GM12878_insitu_replicate_30.hic --inputFormat cool --outputFormat cool -o GM12878_primary_chr1_5000.cool --correction_name KR --chromosome 1 &
hicConvertFormat -m /storage/store/mohit/data/GM12878_insitu_replicate_30.hic --inputFormat cool --outputFormat cool -o GM12878_primary_chr6_5000.cool --correction_name KR --chromosome 6 &