#!/bin/bash

touch peakachu.log
exec > peakachu.log 2>&1




#===================================================
#=======================Primary=====================
#===================================================
start=$(date +%s)
peakachu score_chromosome -p /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_primary_30.hic -O /home/ubuntu/loop_analyzer/data/peakachu/GSE63525_GM12878_insitu_primary_30_5K_chr1.bedpe -m /home/ubuntu/loop_analyzer/data/peakachu/high-confidence.1.4billion.5kb.w6.pkl  -r 5000 -C 1
end=$(date +%s)
echo "At 5K primary chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
peakachu score_chromosome -p /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_primary_30.hic -O /home/ubuntu/loop_analyzer/data/peakachu/GSE63525_GM12878_insitu_primary_30_5K_chr6.bedpe -m /home/ubuntu/loop_analyzer/data/peakachu/high-confidence.1.4billion.5kb.w6.pkl  -r 5000 -C 6
end=$(date +%s)
echo "At 5K primary chr 6 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
peakachu score_chromosome -p /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_primary_30.hic -O /home/ubuntu/loop_analyzer/data/peakachu/GSE63525_GM12878_insitu_primary_30_10K_chr1.bedpe -m /home/ubuntu/loop_analyzer/data/peakachu/high-confidence.1.4billion.10kb.w6.pkl  -r 10000 -C 1
end=$(date +%s)
echo "At 10K primary chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
peakachu score_chromosome -p /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_primary_30.hic -O /home/ubuntu/loop_analyzer/data/peakachu/GSE63525_GM12878_insitu_primary_30_10K_chr6.bedpe -m /home/ubuntu/loop_analyzer/data/peakachu/high-confidence.1.4billion.10kb.w6.pkl  -r 10000 -C 6
end=$(date +%s)
echo "At 10K primary chr 6 Elapsed Time: $(($end-$start)) seconds"




#===================================================
#=======================Replicate=====================
#===================================================
start=$(date +%s)
peakachu score_chromosome -p /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_replicate_30.hic -O /home/ubuntu/loop_analyzer/data/peakachu/GSE63525_GM12878_insitu_replicate_30_5K_chr1.bedpe -m /home/ubuntu/loop_analyzer/data/peakachu/high-confidence.1.2billion.5kb.w6.pkl  -r 5000 -C 1
end=$(date +%s)
echo "At 5K replicate chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
peakachu score_chromosome -p /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_replicate_30.hic -O /home/ubuntu/loop_analyzer/data/peakachu/GSE63525_GM12878_insitu_replicate_30_5K_chr6.bedpe -m /home/ubuntu/loop_analyzer/data/peakachu/high-confidence.1.2billion.5kb.w6.pkl  -r 5000 -C 6
end=$(date +%s)
echo "At 5K replicate chr 6 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
peakachu score_chromosome -p /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_replicate_30.hic -O /home/ubuntu/loop_analyzer/data/peakachu/GSE63525_GM12878_insitu_replicate_30_10K_chr1.bedpe -m /home/ubuntu/loop_analyzer/data/peakachu/high-confidence.1.2billion.10kb.w6.pkl  -r 10000 -C 1
end=$(date +%s)
echo "At 10K replicate chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
peakachu score_chromosome -p /home/ubuntu/loop_analyzer/data/GSE63525_GM12878_insitu_replicate_30.hic -O /home/ubuntu/loop_analyzer/data/peakachu/GSE63525_GM12878_insitu_replicate_30_10K_chr6.bedpe -m /home/ubuntu/loop_analyzer/data/peakachu/high-confidence.1.2billion.10kb.w6.pkl  -r 10000 -C 6
end=$(date +%s)
echo "At 10K replicate chr 6 Elapsed Time: $(($end-$start)) seconds"




#===================================================
#=======================K562=====================
#===================================================
start=$(date +%s)
peakachu score_chromosome -p /home/ubuntu/loop_analyzer/data/GSE63525_K562_combined_30.hic -O /home/ubuntu/loop_analyzer/data/peakachu/GSE63525_K562_combined_30_5K_chr1.bedpe -m /home/ubuntu/loop_analyzer/data/peakachu/high-confidence.500million.5kb.w6.pkl  -r 5000 -C 1
end=$(date +%s)
echo "At 5K K562 chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
peakachu score_chromosome -p /home/ubuntu/loop_analyzer/data/GSE63525_K562_combined_30.hic -O /home/ubuntu/loop_analyzer/data/peakachu/GSE63525_K562_combined_30_5K_chr6.bedpe -m /home/ubuntu/loop_analyzer/data/peakachu/high-confidence.500million.5kb.w6.pkl  -r 5000 -C 6
end=$(date +%s)
echo "At 5K K562 chr 6 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
peakachu score_chromosome -p /home/ubuntu/loop_analyzer/data/GSE63525_K562_combined_30.hic -O /home/ubuntu/loop_analyzer/data/peakachu/GSE63525_K562_combined_30_10K_chr1.bedpe -m /home/ubuntu/loop_analyzer/data/peakachu/high-confidence.500million.10kb.w6.pkl  -r 10000 -C 1
end=$(date +%s)
echo "At 10K K562 chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
peakachu score_chromosome -p /home/ubuntu/loop_analyzer/data/GSE63525_K562_combined_30.hic -O /home/ubuntu/loop_analyzer/data/peakachu/GSE63525_K562_combined_30_10K_chr6.bedpe -m /home/ubuntu/loop_analyzer/data/peakachu/high-confidence.500million.10kb.w6.pkl  -r 10000 -C 6
end=$(date +%s)
echo "At 10K K562 chr 6 Elapsed Time: $(($end-$start)) seconds"


#===================================================
#====================Normalized=====================
#===================================================


#!/bin/bash

exec > peakachu_normKR.log 2>&1

#===================================================
#=======================Primary=====================
#===================================================
start=$(date +%s)
peakachu score_chromosome -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool -O GM12878_primary_KR_chr1_10k.peakachu.bedpe -m high-confidence.1.4billion.10kb.w6.pkl --balance -r 10000 -C 1
end=$(date +%s)
echo "#primary_normKR chr 1 @10k, elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
peakachu score_chromosome -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool -O GM12878_primary_KR_chr1_5k.peakachu.bedpe -m high-confidence.1.4billion.5kb.w6.pkl --balance -r 5000 -C 1
end=$(date +%s)
echo "#primary_normKR chr 1 @5k, elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
peakachu score_chromosome -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool -O GM12878_primary_KR_chr6_10k.peakachu.bedpe -m high-confidence.1.4billion.10kb.w6.pkl --balance -r 10000 -C 6
end=$(date +%s)
echo "#primary_normKR chr 6 @10k, elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
peakachu score_chromosome -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool -O GM12878_primary_KR_chr6_5k.peakachu.bedpe -m high-confidence.1.4billion.5kb.w6.pkl --balance -r 5000 -C 6
end=$(date +%s)
echo "#primary_normKR chr 6 @5k, elapsed time: $(($end-$start)) seconds"




#===================================================
#====================Replicate======================
#===================================================


#!/bin/bash

exec > peakachu_replicate.log 2>&1

start=$(date +%s)
peakachu score_chromosome -p /storage/store/mohit/data/replicate/GM12878_replicate_KR_10000.cool -O GM12878_replicate_KR_chr1_10k.peakachu.bedpe -m high-confidence.1.4billion.10kb.w6.pkl --balance -r 10000 -C 1
end=$(date +%s)
echo "#replicate_normKR chr 1 @10k, elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
peakachu score_chromosome -p /storage/store/mohit/data/replicate/GM12878_replicate_KR_5000.cool -O GM12878_replicate_KR_chr1_5k.peakachu.bedpe -m high-confidence.1.4billion.5kb.w6.pkl --balance -r 5000 -C 1
end=$(date +%s)
echo "#replicate_normKR chr 1 @5k, elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
peakachu score_chromosome -p /storage/store/mohit/data/replicate/GM12878_replicate_KR_10000.cool -O GM12878_replicate_KR_chr6_10k.peakachu.bedpe -m high-confidence.1.4billion.10kb.w6.pkl --balance -r 10000 -C 6
end=$(date +%s)
echo "#replicate_normKR chr 6 @10k, elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
peakachu score_chromosome -p /storage/store/mohit/data/replicate/GM12878_replicate_KR_5000.cool -O GM12878_replicate_KR_chr6_5k.peakachu.bedpe -m high-confidence.1.4billion.5kb.w6.pkl --balance -r 5000 -C 6
end=$(date +%s)
echo "#replicate_normKR chr 6 @5k, elapsed time: $(($end-$start)) seconds"