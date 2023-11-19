#!/bin/bash

#touch chromosite_preprocess.log
touch chromosight.log

#exec > chromosite_preprocess.log 2>&1

#hicConvertFormat -m /home/ubuntu/loop/data/primary/GSE63525_GM12878_insitu_primary_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/GSE63525_GM12878_insitu_primary_30_chr1.cool --resolutions 5000 --chromosome 1 &
#hicConvertFormat -m /home/ubuntu/loop/data/primary/GSE63525_GM12878_insitu_primary_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/GSE63525_GM12878_insitu_primary_30_chr6.cool --resolutions 5000 --chromosome 6 &
#hicConvertFormat -m /home/ubuntu/loop/data/primary/GSE63525_GM12878_insitu_primary_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/GSE63525_GM12878_insitu_primary_30_chr1.cool --resolutions 10000 --chromosome 1 &
#hicConvertFormat -m /home/ubuntu/loop/data/primary/GSE63525_GM12878_insitu_primary_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/GSE63525_GM12878_insitu_primary_30_chr6.cool --resolutions 10000 --chromosome 6 &

#hicConvertFormat -m /home/ubuntu/loop/data/replicate/GSE63525_GM12878_insitu_replicate_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/GSE63525_GM12878_insitu_replicate_30_chr1.cool --resolutions 5000 --chromosome 1 &
#hicConvertFormat -m /home/ubuntu/loop/data/replicate/GSE63525_GM12878_insitu_replicate_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/GSE63525_GM12878_insitu_replicate_30_chr6.cool --resolutions 5000 --chromosome 6 &
#hicConvertFormat -m /home/ubuntu/loop/data/replicate/GSE63525_GM12878_insitu_replicate_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/GSE63525_GM12878_insitu_replicate_30_chr1.cool --resolutions 10000 --chromosome 1 &
#hicConvertFormat -m /home/ubuntu/loop/data/replicate/GSE63525_GM12878_insitu_replicate_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/GSE63525_GM12878_insitu_replicate_30_chr6.cool --resolutions 10000 --chromosome 6 &
#wait

#hicConvertFormat -m /home/ubuntu/loop/data/K562/GSE63525_K562_combined_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/GSE63525_K562_combined_30_chr1.cool --resolutions 5000 --chromosome 1 &
#hicConvertFormat -m /home/ubuntu/loop/data/K562/GSE63525_K562_combined_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/GSE63525_K562_combined_30_chr6.cool --resolutions 5000 --chromosome 6 &
#hicConvertFormat -m /home/ubuntu/loop/data/K562/GSE63525_K562_combined_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/GSE63525_K562_combined_30_chr1.cool --resolutions 10000 --chromosome 1 &
#hicConvertFormat -m /home/ubuntu/loop/data/K562/GSE63525_K562_combined_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop/data/GSE63525_K562_combined_30_chr6.cool --resolutions 10000 --chromosome 6 &
#wait


hicConvertFormat -m /home/ubuntu/loop_analyzer/data/hub/GSE63525_GM12878_insitu_primary_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/hub/firecaller/GSE63525_GM12878_insitu_primary_30.cool --resolutions 10000




exec > chromosight.log 2>&1
#===================================================
#=======================Primary=====================
#===================================================
start=$(date +%s)
chromosight detect --threads 8 --min-dist 20000 --max-dist 200000 /home/ubuntu/loop/data/GSE63525_GM12878_insitu_primary_30_chr1_5000.cool GSE63525_GM12878_insitu_primary_30_chr1_5000
end=$(date +%s)
echo "At 5K primary chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
chromosight detect --threads 8 --min-dist 20000 --max-dist 200000 /home/ubuntu/loop/data/GSE63525_GM12878_insitu_primary_30_chr6_5000.cool GSE63525_GM12878_insitu_primary_30_chr6_5000
end=$(date +%s)
echo "At 5K primary chr 6 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
chromosight detect --threads 8 --min-dist 20000 --max-dist 200000 /home/ubuntu/loop/data/GSE63525_GM12878_insitu_primary_30_chr1_10000.cool GSE63525_GM12878_insitu_primary_30_chr1_10000
end=$(date +%s)
echo "At 10K primary chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
chromosight detect --threads 8 --min-dist 20000 --max-dist 200000 /home/ubuntu/loop/data/GSE63525_GM12878_insitu_primary_30_chr6_10000.cool GSE63525_GM12878_insitu_primary_30_chr6_10000
end=$(date +%s)
echo "At 10K primary chr 6 Elapsed Time: $(($end-$start)) seconds"




#===================================================
#=======================Replicate=====================
#===================================================
start=$(date +%s)
chromosight detect --threads 8 --min-dist 20000 --max-dist 200000 /home/ubuntu/loop/data/GSE63525_GM12878_insitu_replicate_30_chr1_5000.cool GSE63525_GM12878_insitu_replicate_30_chr1_5000
end=$(date +%s)
echo "At 5K replicate chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
chromosight detect --threads 8 --min-dist 20000 --max-dist 200000 /home/ubuntu/loop/data/GSE63525_GM12878_insitu_replicate_30_chr6_5000.cool GSE63525_GM12878_insitu_replicate_30_chr6_5000
end=$(date +%s)
echo "At 5K replicate chr 6 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
chromosight detect --threads 8 --min-dist 20000 --max-dist 200000 /home/ubuntu/loop/data/GSE63525_GM12878_insitu_replicate_30_chr1_10000.cool GSE63525_GM12878_replicate_primary_30_chr1_10000
end=$(date +%s)
echo "At 10K replicate chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
chromosight detect --threads 8 --min-dist 20000 --max-dist 200000 /home/ubuntu/loop/data/GSE63525_GM12878_insitu_replicate_30_chr6_10000.cool GSE63525_GM12878_replicate_primary_30_chr6_10000
end=$(date +%s)
echo "At 10K replicate chr 6 Elapsed Time: $(($end-$start)) seconds"




#===================================================
#=======================K562=====================
#===================================================
start=$(date +%s)
chromosight detect --threads 8 --min-dist 20000 --max-dist 200000 /home/ubuntu/loop/data/GSE63525_K562_combined_30_chr1_5000.cool GSE63525_K562_combined_30_chr1_5000
end=$(date +%s)
echo "At 5K K562 chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
chromosight detect --threads 8 --min-dist 20000 --max-dist 200000 /home/ubuntu/loop/data/GSE63525_K562_combined_30_chr6_5000.cool GSE63525_K562_combined_30_chr6_5000
end=$(date +%s)
echo "At 5K K562 chr 6 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
chromosight detect --threads 8 --min-dist 20000 --max-dist 200000 /home/ubuntu/loop/data/GSE63525_K562_combined_30_chr1_10000.cool GSE63525_K562_combined_30_chr1_10000
end=$(date +%s)
echo "At 10K K562 chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
chromosight detect --threads 8 --min-dist 20000 --max-dist 200000 /home/ubuntu/loop/data/GSE63525_K562_combined_30_chr6_10000.cool GSE63525_K562_combined_30_chr6_10000
end=$(date +%s)
echo "At 10K K562 chr 6 Elapsed Time: $(($end-$start)) seconds"




#!/bin/bash

exec > hicconvert.log 2>&1

hicConvertFormat -m /home/ubuntu/loop_analyzer/data/hub/GSE63525_GM12878_insitu_primary_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/hub/GM12878_primary_30.cool --resolutions 0 & 
hicConvertFormat -m /home/ubuntu/loop_analyzer/data/primary/GSE63525_GM12878_insitu_primary_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/GM12878_primary_30_10K.cool --resolutions 10000 & 
wait


#!/bin/bash

exec > chromosight.log 2>&1

#===================================================
#=======================Primary=====================
#===================================================
start=$(date +%s)
chromosight detect --threads 8 --min-dist 20000 --max-dist 200000 /storage/store/mohit/data/GM12878_primary_30_10k.cool /storage/store/mohit/data/chromosight/GM12878_primary_30_10k
end=$(date +%s)
echo "At 5K primary Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
chromosight detect --threads 8 --pattern=loops /home/ubuntu/loop_analyzer/data/GM12878_primary_30_10k.cool GM12878_primary_30_10k
end=$(date +%s)
echo "At 10K primary Elapsed Time: $(($end-$start)) seconds"



chromosight detect --threads 8 --pattern=loops--min-dist 20000 --max-dist 200000 /home/ubuntu/loop_analyzer/data/GM12878_primary_30_5k.cool GM12878_primary_30_5k








chromosight detect --threads 8 --min-dist 20000 --max-dist 200000 GM12878_primary_30_10k.cool GM12878_primary_30_10000 

chromosight detect -t12 GM12878_primary_30_10k.cool ./GM12878_primary_30_10000



chromosight detect --threads 8 --min-dist 20000 --max-dist 200000 /storage/store/mohit/data/GM12878_primary_30_10k.cool /storage/store/mohit/data/chromosight/GM12878_primary_30_10k





#!/bin/bash

exec > chromosight.log 2>&1

#===================================================
#=======================Primary=====================
#===================================================

start=$(date +%s)
chromosight detect --threads 8 --min-dist 20000 --max-dist 200000 /storage/store/mohit/data/GM12878_primary_30_5000.cool /storage/store/mohit/data/chromosight/GM12878_primary_5000.chromosight
end=$(date +%s)
echo "#primary @5k, elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
chromosight detect --threads 8 --min-dist 20000 --max-dist 200000 /storage/store/mohit/data/GM12878_primary_30_10k.cool /storage/store/mohit/data/chromosight/GM12878_primary_10000.chromosight
end=$(date +%s)
echo "#primary @10k, elapsed time: $(($end-$start)) seconds"




#===================================================
#=====================Normalized====================
#===================================================

#!/bin/bash

exec > chromosight_normKR.log 2>&1

start=$(date +%s)
chromosight detect --threads 8 --min-dist 20000 --max-dist 200000 /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool /storage/store/mohit/data/kr_norm/chromosight/GM12878_primary_KR_5000.chromosight
end=$(date +%s)
echo "#primary_normKR @5k, elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
chromosight detect --threads 8 --min-dist 20000 --max-dist 200000 /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool /storage/store/mohit/data/kr_norm/chromosight/GM12878_primary_KR_10000.chromosight
end=$(date +%s)
echo "#primary_normKR @10k, elapsed time: $(($end-$start)) seconds"



#===================================================
#=====================Replicate=====================
#===================================================

#!/bin/bash

exec > chromosight.log 2>&1

start=$(date +%s)
chromosight detect --threads 8 --min-dist 20000 --max-dist 200000 /storage/store/mohit/data/replicate/GM12878_replicate_KR_5000.cool /storage/store/mohit/data/replicate/chromosight/GM12878_primary_KR_5000.chromosight
end=$(date +%s)
echo "#replicate @5k, elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
chromosight detect --threads 8 --min-dist 20000 --max-dist 200000 /storage/store/mohit/data/replicate/GM12878_replicate_KR_10000.cool /storage/store/mohit/data/replicate/chromosight/GM12878_primary_KR_10000.chromosight
end=$(date +%s)
echo "#replicate @10k, elapsed time: $(($end-$start)) seconds"