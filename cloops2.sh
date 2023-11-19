#!/bin/bash

exec > cloops2.log 2>&1

#===================================================
#=======================Primary=====================
#===================================================
cLoops2 pre -f /storage/store/mohit/data/GM12878_primary_30.bedpe -o GM12878_replicate_chr1 -mapq 30 -c chr1

start=$(date +%s)
cLoops2 callLoops -d GM12878_replicate_chr1 -o GM12878_replicate_chr1.cloops2 -eps 5000,7500,10000 -minPts 20,30,40,50 -w -j
end=$(date +%s)
echo "replicate chr 1, elapsed time: $(($end-$start)) seconds"

cLoops2 pre -f /storage/store/mohit/data/GM12878_primary_30.bedpe -o GM12878_replicate_chr6 -mapq 30 -c chr6

start=$(date +%s)
cLoops2 callLoops -d GM12878_replicate_chr6 -o GM12878_replicate_chr6.cloops2 -eps 5000,7500,10000 -minPts 20,30,40,50 -w -j
end=$(date +%s)
echo "replicate chr 6, elapsed time: $(($end-$start)) seconds"




#===================================================
#====================Normalized=====================
#===================================================

#!/bin/bash

exec > cloops2_normKR.log 2>&1

cLoops2 pre -f /storage/store/mohit/data/kr_norm/GM12878_primary_KR_chr1_5k.bedpe -o GM12878_primary_KR_chr1_5k -c chr1

start=$(date +%s)
cLoops2 callLoops -d GM12878_primary_KR_chr1_5k -o GM12878_primary_KR_chr1_5k/GM12878_primary_KR_chr1_5k.cloops2 -eps 5000 -minPts 10 -w -j
end=$(date +%s)
echo "primary_normKR chr 1, @5k eps, elapsed time: $(($end-$start)) seconds"

cLoops2 pre -f /storage/store/mohit/data/kr_norm/GM12878_primary_KR_chr1_10k.bedpe -o GM12878_primary_KR_chr1_10k -c chr1

start=$(date +%s)
cLoops2 callLoops -d GM12878_primary_KR_chr1_10k -o GM12878_primary_KR_chr1_10k/GM12878_primary_KR_chr1_10k.cloops2 -eps 10000 -minPts 10 -w -j
end=$(date +%s)
echo "primary_normKR chr 1 @10k eps, elapsed time: $(($end-$start)) seconds"

cLoops2 pre -f /storage/store/mohit/data/kr_norm/GM12878_primary_KR_chr6_5k.bedpe -o GM12878_primary_KR_chr6_5k -c chr6

start=$(date +%s)
cLoops2 callLoops -d GM12878_primary_KR_chr6_5k -o GM12878_primary_KR_chr6_5k/GM12878_primary_KR_chr6_5k.cloops2 -eps 5000 -minPts 10 -w -j
end=$(date +%s)
echo "primary_normKR chr 6, @5k eps, elapsed time: $(($end-$start)) seconds"

cLoops2 pre -f /storage/store/mohit/data/kr_norm/GM12878_primary_KR_chr6_10k.bedpe -o GM12878_primary_KR_chr6_10k -c chr6

start=$(date +%s)
cLoops2 callLoops -d GM12878_primary_KR_chr6_10k -o GM12878_primary_KR_chr6_10k/GM12878_primary_KR_chr6_10k.cloops2 -eps 10000 -minPts 10 -w -j
end=$(date +%s)
echo "primary_normKR chr 6 @10k eps, elapsed time: $(($end-$start)) seconds"



#===================================================
#====================Replicate======================
#===================================================

#!/bin/bash

exec > cloops2_replicate.log 2>&1

cLoops2 pre -f /storage/store/mohit/data/replicate/GM12878_replicate.bedpe -o GM12878_replicate_chr1 -c chr1

start=$(date +%s)
cLoops2 callLoops -d GM12878_replicate_chr1 -o GM12878_replicate_chr1.cloops2 -eps 5000,7500,10000 -minPts 20,30,40,50 -w -j
end=$(date +%s)
echo "replicate chr 1, elapsed time: $(($end-$start)) seconds"

cLoops2 pre -f /storage/store/mohit/data/replicate/GM12878_replicate.bedpe -o GM12878_replicate_chr6 -c chr6

start=$(date +%s)
cLoops2 callLoops -d GM12878_replicate_chr6 -o GM12878_replicate_chr6.cloops2 -eps 5000,7500,10000 -minPts 20,30,40,50 -w -j
end=$(date +%s)
echo "replicate chr 6, elapsed time: $(($end-$start)) seconds"