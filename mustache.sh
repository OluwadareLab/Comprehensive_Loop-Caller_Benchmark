#!/bin/bash

touch mustache.log

wget -P ./../ https://ftp.ncbi.nlm.nih.gov/geo/series/GSE63nnn/GSE63525/suppl/GSE63525_GM12878_insitu_primary_30.hic &
wget -P ./../ https://ftp.ncbi.nlm.nih.gov/geo/series/GSE63nnn/GSE63525/suppl/GSE63525_GM12878_insitu_replicate_30.hic &
wget -P ./../ https://ftp.ncbi.nlm.nih.gov/geo/series/GSE63nnn/GSE63525/suppl/GSE63525_K562_combined_30.hic &
wait




exec > mustache.log 2>&1
#===================================================
#=======================Primary=====================
#===================================================
start=$(date +%s)
mustache -f ./../GSE63525_GM12878_insitu_primary_30.hic -r 5kb -o mustache_primary_chr1_5K.tsv -ch 1
end=$(date +%s)
echo "At 5K primary chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
mustache -f ./../GSE63525_GM12878_insitu_primary_30.hic -r 5kb -o mustache_primary_chr6_5K.tsv -ch 6
end=$(date +%s)
echo "At 5K primary chr 6 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
mustache -f ./../GSE63525_GM12878_insitu_primary_30.hic -r 10kb -o mustache_primary_chr1_10K.tsv -ch 1
end=$(date +%s)
echo "At 10K primary chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
mustache -f ./../GSE63525_GM12878_insitu_primary_30.hic -r 10kb -o mustache_primary_chr6_10K.tsv -ch 6
end=$(date +%s)
echo "At 10K primary chr 6 Elapsed Time: $(($end-$start)) seconds"




#===================================================
#=======================Replicate===================
#===================================================
start=$(date +%s)
mustache -f ./../GSE63525_GM12878_insitu_replicate_30.hic -r 5kb -o mustache_replicate_chr1_5K.tsv -ch 1
end=$(date +%s)
echo "At 5K replicate chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
mustache -f ./../GSE63525_GM12878_insitu_replicate_30.hic -r 5kb -o mustache_replicate_chr6_5K.tsv -ch 6
end=$(date +%s)
echo "At 5K replicate chr 6 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
mustache -f ./../GSE63525_GM12878_insitu_replicate_30.hic -r 10kb -o mustache_replicate_chr1_10K.tsv -ch 1
end=$(date +%s)
echo "At 10K replicate chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
mustache -f ./../GSE63525_GM12878_insitu_replicate_30.hic -r 10kb -o mustache_replicate_chr6_10K.tsv -ch 6
end=$(date +%s)
echo "At 10K replicate chr 6 Elapsed Time: $(($end-$start)) seconds"




#===================================================
#=======================K562========================
#===================================================
start=$(date +%s)
mustache -f ./../GSE63525_K562_combined_30.hic -r 5kb -o mustache_K562_chr1_5K.tsv -ch 1
end=$(date +%s)
echo "At 5K K562 chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
mustache -f ./../GSE63525_K562_combined_30.hic -r 5kb -o mustache_K562_chr6_5K.tsv -ch 6
end=$(date +%s)
echo "At 5K K562 chr 6 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
mustache -f ./../GSE63525_K562_combined_30.hic -r 10kb -o mustache_K562_chr1_10K.tsv -ch 1
end=$(date +%s)
echo "At 10K K562 chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
mustache -f ./../GSE63525_K562_combined_30.hic -r 10kb -o mustache_K562_chr6_10K.tsv -ch 6
end=$(date +%s)
echo "At 10K K562 chr 6 Elapsed Time: $(($end-$start)) seconds"



#===================================================
#====================Normalized=====================
#===================================================

#!/bin/bash

exec > mustache_normKR.log 2>&1

start=$(date +%s)
mustache -f /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool -o GM12878_primary_KR_chr1_5k.mustache.tsv -ch 1 -r 5kb
end=$(date +%s)
echo "primary chr1 @5k primary, Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
mustache -f /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool -o GM12878_primary_KR_chr1_10k.mustache.tsv -ch 1 -r 10kb
end=$(date +%s)
echo "primary chr1 @10k primary, Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
mustache -f /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool -o GM12878_primary_KR_chr6_5k.mustache.tsv -ch 6 -r 5kb
end=$(date +%s)
echo "primary chr6 @5k primary, Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
mustache -f /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool -o GM12878_primary_KR_chr6_10k.mustache.tsv -ch 6 -r 10kb
end=$(date +%s)
echo "primary chr6 @10k primary, Elapsed Time: $(($end-$start)) seconds"



#===================================================
#====================Replicate======================
#===================================================

#!/bin/bash

exec > mustache_replicate.log 2>&1

start=$(date +%s)
mustache -f /storage/store/mohit/data/replicate/GM12878_replicate_KR_5000.cool -o GM12878_replicate_KR_chr1_5k.mustache.tsv -ch 1 -r 5kb
end=$(date +%s)
echo "replicate chr1 @5k replicate, Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
mustache -f /storage/store/mohit/data/replicate/GM12878_replicate_KR_10000.cool -o GM12878_replicate_KR_chr1_10k.mustache.tsv -ch 1 -r 10kb
end=$(date +%s)
echo "replicate chr1 @10k replicate, Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
mustache -f /storage/store/mohit/data/replicate/GM12878_replicate_KR_5000.cool -o GM12878_replicate_KR_chr6_5k.mustache.tsv -ch 6 -r 5kb
end=$(date +%s)
echo "replicate chr6 @5k replicate, Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
mustache -f /storage/store/mohit/data/replicate/GM12878_replicate_KR_10000.cool -o GM12878_replicate_KR_chr6_10k.mustache.tsv -ch 6 -r 10kb
end=$(date +%s)
echo "replicate chr6 @10k replicate, Elapsed Time: $(($end-$start)) seconds"