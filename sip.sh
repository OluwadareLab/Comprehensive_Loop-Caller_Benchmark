#!/bin/bash

touch sip.log
exec > sip.log 2>&1

#===================================================
#=======================Primary=====================
#===================================================
start=$(date +%s)
java -jar SIP_HiC_v1.6.1.jar hic /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_primary_30.hic /home/ubuntu/loop_analyzer/data/hg19.chrom.sizes /home/ubuntu/loop_analyzer/data/sip /home/ubuntu/loop_analyzer/data/juicer_tools_1.22.01.jar  -cpu 7 -res 5000 -t 9000
end=$(date +%s)
echo "At 5K primary Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
java -jar SIP_HiC_v1.6.1.jar hic /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_primary_30.hic /home/ubuntu/loop_analyzer/data/hg19.chrom.sizes /home/ubuntu/loop_analyzer/data/sip/primary/ /home/ubuntu/loop_analyzer/data/juicer_tools_1.22.01.jar  -cpu 8 -res 10000
end=$(date +%s)
echo "At 10K primary Elapsed Time: $(($end-$start)) seconds"




#===================================================
#=======================Replicate=====================
#===================================================
start=$(date +%s)
java -jar SIP_HiC_v1.6.1.jar hic /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_replicate_30.hic /home/ubuntu/loop_analyzer/data/hg19.chrom.sizes /home/ubuntu/loop_analyzer/data/sip/replicate/ /home/ubuntu/loop_analyzer/data/juicer_tools_1.22.01.jar  -cpu 8 -res 5000
end=$(date +%s)
echo "At 5K replicate Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
java -jar SIP_HiC_v1.6.1.jar hic /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_replicate_30.hic /home/ubuntu/loop_analyzer/data/hg19.chrom.sizes /home/ubuntu/loop_analyzer/data/sip/replicate/ /home/ubuntu/loop_analyzer/data/juicer_tools_1.22.01.jar  -cpu 8 -res 10000
end=$(date +%s)
echo "At 10K replicate Elapsed Time: $(($end-$start)) seconds"




#===================================================
#=======================K562=====================
#===================================================
start=$(date +%s)
java -jar SIP_HiC_v1.6.1.jar hic /home/ubuntu/loop_analyzer/data/GSE63525_K562_combined_30.hic /home/ubuntu/loop_analyzer/data/hg19.chrom.sizes /home/ubuntu/loop_analyzer/data/sip/K562/ /home/ubuntu/loop_analyzer/data/juicer_tools_1.22.01.jar  -cpu 8 -res 5000
end=$(date +%s)
echo "At 5K K562 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
java -jar SIP_HiC_v1.6.1.jar hic /home/ubuntu/loop_analyzer/data/GSE63525_K562_combined_30.hic /home/ubuntu/loop_analyzer/data/hg19.chrom.sizes /home/ubuntu/loop_analyzer/data/sip/K562/ /home/ubuntu/loop_analyzer/data/juicer_tools_1.22.01.jar  -cpu 8 -res 10000
end=$(date +%s)
echo "At 10K K562 Elapsed Time: $(($end-$start)) seconds"









#!/bin/bash

exec > sip.log 2>&1

#===================================================
#=======================Primary=====================
#===================================================
start=$(date +%s)
java -jar SIP_HiC_v1.6.1.jar hic /home/ubuntu/loop_analyzer/data/hub/GSE63525_GM12878_insitu_primary_30.hic ./hg19.chrom.sizes /home/ubuntu/loop_analyzer/data/hub/sip ./juicer_1.22.01.jar -res 5000 -t 9000
end=$(date +%s)
echo "primary @5k elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
java -jar SIP_HiC_v1.6.1.jar hic /home/ubuntu/loop_analyzer/data/hub/GSE63525_GM12878_insitu_primary_30.hic ./hg19.chrom.sizes /home/ubuntu/loop_analyzer/data/hub/sip ./juicer_1.22.01.jar -res 10000 -t 9000
end=$(date +%s)
echo "primary @10k elapsed time: $(($end-$start)) seconds"




java -jar SIP_HiC_v1.6.1.jar hic /storage/store/mohit/data/GM12878_primary_30.hic hg19.chrom.sizes /storage/store/mohit/data/sip_result juicer_tools_1.13.01.jar -norm NONE



#!/bin/bash

touch sip.log
exec > sip.log 2>&1

#===================================================
#=======================Primary=====================
#===================================================
start=$(date +%s)
java -jar SIP_HiC_v1.6.1.jar hic /storage/store/mohit/data/GM12878_primary_30.hic hg19.chrom.sizes /storage/store/mohit/data/sip juicer_tools_1.13.01.jar -norm NONE
end=$(date +%s)
echo "primary @5k, Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
java -jar SIP_HiC_v1.6.1.jar hic /storage/store/mohit/data/GM12878_primary_30.hic hg19.chrom.sizes /storage/store/mohit/data/sip juicer_tools_1.13.01.jar -norm NONE -res 10000
end=$(date +%s)
echo "primary @10k, Elapsed Time: $(($end-$start)) seconds"



#===================================================
#=====================Replicate=====================
#===================================================

#!/bin/bash

exec > sip.log 2>&1

start=$(date +%s)
java -jar SIP_HiC_v1.6.1.jar hic /storage/store/mohit/data/GSE63525_GM12878_insitu_replicate_30.hic hg19.chrom.sizes /storage/store/mohit/data/replicate/sip juicer_tools_1.13.01.jar -norm KR -res 5000
end=$(date +%s)
echo "replicate @5k, Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
java -jar SIP_HiC_v1.6.1.jar hic /storage/store/mohit/data/GSE63525_GM12878_insitu_replicate_30.hic hg19.chrom.sizes /storage/store/mohit/data/replicate/sip juicer_tools_1.13.01.jar -norm KR -res 10000
end=$(date +%s)
echo "replicate @10k, Elapsed Time: $(($end-$start)) seconds"