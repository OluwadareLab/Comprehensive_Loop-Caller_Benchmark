#!/bin/bash

exec > coolpup.log 2>&1

#===================================================
#=======================Primary=====================
#===================================================

start=$(date +%s)
coolpup.py --features_format bed -o GM12878_primary_30_5000.coolpup /storage/store/mohit/data/GM12878_primary_30_balanced_5k.cool /storage/store/mohit/data/primary/sra/_GM12878_primary_30.bed
end=$(date +%s)
echo "primary @5k eps, elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
coolpup.py --features_format bed -o GM12878_primary_30_10000.coolpup /storage/store/mohit/data/GM12878_primary_30_balanced_10k.cool /storage/store/mohit/data/GM12878_primary_30.bed
end=$(date +%s)
echo "primary @10k eps, elapsed time: $(($end-$start)) seconds"


#===================================================
#====================Normalized=====================
#===================================================

#!/bin/bash

exec > coolpup_normKR.log 2>&1

#===================================================
#=======================Primary=====================
#===================================================

start=$(date +%s)
coolpup.py --features_format bed -o GM12878_primary_30_5000.coolpup /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool /storage/store/mohit/data/kr_norm/GM12878_primary_30.bed
end=$(date +%s)
echo "primary_normKR @5k eps, elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
coolpup.py --features_format bed -o GM12878_primary_30_10000.coolpup /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool /storage/store/mohit/data/kr_norm/GM12878_primary_30.bed
end=$(date +%s)
echo "primary_normKR @10k eps, elapsed time: $(($end-$start)) seconds"