#!/bin/bash

touch fithic.log
exec > fithic.log 2>&1

python3 /home/ubuntu/loop_analyzer/data/hub/fithic/fithic/utils/createFitHiCContacts-hic.py --HiCFile /home/ubuntu/loop_analyzer/data/hub/primary/GSE63525_GM12878_insitu_primary_30.hic --CHR1 1 --CHR2 1 --resolution 10000 --outFile fithic_primary_contact_10K_chr1 &
python3 /home/ubuntu/loop_analyzer/data/hub/fithic/fithic/utils/createFitHiCContacts-hic.py --HiCFile /home/ubuntu/loop_analyzer/data/hub/primary/GSE63525_GM12878_insitu_primary_30.hic --CHR1 1 --CHR2 1 --resolution 5000 --outFile fithic_primary_contact_5K_chr1 &

python3 /home/ubuntu/loop_analyzer/data/hub/fithic/fithic/utils/createFitHiCContacts-hic.py --HiCFile /home/ubuntu/loop_analyzer/data/hub/primary/GSE63525_GM12878_insitu_primary_30.hic --CHR1 6 --CHR2 6 --resolution 10000 --outFile fithic_primary_contact_10K_chr6 &
python3 /home/ubuntu/loop_analyzer/data/hub/fithic/fithic/utils/createFitHiCContacts-hic.py --HiCFile /home/ubuntu/loop_analyzer/data/hub/primary/GSE63525_GM12878_insitu_primary_30.hic --CHR1 6 --CHR2 6 --resolution 5000 --outFile fithic_primary_contact_5K_chr6 &

wait

python3 /home/ubuntu/loop_analyzer/data/hub/fithic/fithic/utils/createFitHiCContacts-hic.py --HiCFile /home/ubuntu/loop_analyzer/data/hub/replicate/GSE63525_GM12878_insitu_replicate_30.hic --CHR1 1 --CHR2 1 --resolution 10000 --outFile fithic_replicate_contact_10K_chr1 &
python3 /home/ubuntu/loop_analyzer/data/hub/fithic/fithic/utils/createFitHiCContacts-hic.py --HiCFile /home/ubuntu/loop_analyzer/data/hub/replicate/GSE63525_GM12878_insitu_replicate_30.hic --CHR1 1 --CHR2 1 --resolution 5000 --outFile fithic_replicate_contact_5K_chr1 &

python3 /home/ubuntu/loop_analyzer/data/hub/fithic/fithic/utils/createFitHiCContacts-hic.py --HiCFile /home/ubuntu/loop_analyzer/data/hub/replicate/GSE63525_GM12878_insitu_replicate_30.hic --CHR1 6 --CHR2 6 --resolution 10000 --outFile fithic_replicate_contact_10K_chr6 &
python3 /home/ubuntu/loop_analyzer/data/hub/fithic/fithic/utils/createFitHiCContacts-hic.py --HiCFile /home/ubuntu/loop_analyzer/data/hub/replicate/GSE63525_GM12878_insitu_replicate_30.hic --CHR1 6 --CHR2 6 --resolution 5000 --outFile fithic_replicate_contact_5K_chr6 &

wait 

python3 /home/ubuntu/loop_analyzer/data/hub/fithic/fithic/utils/createFitHiCContacts-hic.py --HiCFile /home/ubuntu/loop_analyzer/data/hub/K562/GSE63525_K562_combined_30.hic --CHR1 1 --CHR2 1 --resolution 10000 --outFile fithic_K562_contact_10K_chr1 &
python3 /home/ubuntu/loop_analyzer/data/hub/fithic/fithic/utils/createFitHiCContacts-hic.py --HiCFile /home/ubuntu/loop_analyzer/data/hub/K562/GSE63525_K562_combined_30.hic --CHR1 1 --CHR2 1 --resolution 5000 --outFile fithic_K562_contact_5K_chr1 &

python3 /home/ubuntu/loop_analyzer/data/hub/fithic/fithic/utils/createFitHiCContacts-hic.py --HiCFile /home/ubuntu/loop_analyzer/data/hub/K562/GSE63525_K562_combined_30.hic --CHR1 6 --CHR2 6 --resolution 10000 --outFile fithic_K562_contact_10K_chr6 &
python3 /home/ubuntu/loop_analyzer/data/hub/fithic/fithic/utils/createFitHiCContacts-hic.py --HiCFile /home/ubuntu/loop_analyzer/data/hub/K562/GSE63525_K562_combined_30.hic --CHR1 6 --CHR2 6 --resolution 5000 --outFile fithic_K562_contact_5K_chr6 &

wait

python3 /home/ubuntu/loop_analyzer/data/hub/fithic/fithic/utils/createFitHiCFragments-fixedsize.py --chrLens hg19.chrom.sizes --outFile fithic_fragment_10K.gz --resolution 10000 &
python3 /home/ubuntu/loop_analyzer/data/hub/fithic/fithic/utils/createFitHiCFragments-fixedsize.py --chrLens hg19.chrom.sizes --outFile fithic_fragment_5K.gz --resolution 5000 &

wait

gzip fithic_primary_contact_10K_chr1 &
gzip fithic_primary_contact_5K_chr1 &
gzip fithic_primary_contact_10K_chr6 &
gzip fithic_primary_contact_5K_chr6 &

wait

gzip fithic_replicate_contact_10K_chr1 &
gzip fithic_replicate_contact_5K_chr1 &
gzip fithic_replicate_contact_10K_chr6 &
gzip fithic_replicate_contact_5K_chr6 &

wait

gzip fithic_K562_contact_10K_chr1 &
gzip fithic_K562_contact_5K_chr1 &
gzip fithic_K562_contact_10K_chr6 &
gzip fithic_K562_contact_5K_chr6 &

wait

#===================================================
#=======================Primary=====================
#===================================================


start=$(date +%s)
fithic -f fithic_fragment_10K.gz -i fithic_primary_contact_10K_chr1.gz -o /home/ubuntu/loop_analyzer/data/hub/primary/fithic/chr1/ -r 10000
end=$(date +%s)
echo "At 10K primary chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
fithic -f fithic_fragment_5K.gz -i fithic_primary_contact_5K_chr1.gz -o /home/ubuntu/loop_analyzer/data/hub/primary/fithic/chr1/ -r 5000
end=$(date +%s)
echo "At 5K primary chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
fithic -f fithic_fragment_10K.gz -i fithic_primary_contact_10K_chr6.gz -o /home/ubuntu/loop_analyzer/data/hub/primary/fithic/chr6/ -r 10000
end=$(date +%s)
echo "At 10K primary chr 6 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
fithic -f fithic_fragment_5K.gz -i fithic_primary_contact_5K_chr6.gz -o /home/ubuntu/loop_analyzer/data/hub/primary/fithic/chr6/ -r 5000
end=$(date +%s)
echo "At 5K primary chr 6 Elapsed Time: $(($end-$start)) seconds"


#===================================================
#======================Replicate====================
#===================================================


start=$(date +%s)
fithic -f fithic_fragment_10K.gz -i fithic_replicate_contact_10K_chr1.gz -o /home/ubuntu/loop_analyzer/data/hub/replicate/fithic/chr1/ -r 10000
end=$(date +%s)
echo "At 10K replicate chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
fithic -f fithic_fragment_5K.gz -i fithic_replicate_contact_5K_chr1.gz -o /home/ubuntu/loop_analyzer/data/hub/replicate/fithic/chr1/ -r 5000
end=$(date +%s)
echo "At 5K replicate chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
fithic -f fithic_fragment_10K.gz -i fithic_replicate_contact_10K_chr6.gz -o /home/ubuntu/loop_analyzer/data/hub/replicate/fithic/chr6/ -r 10000
end=$(date +%s)
echo "At 10K replicate chr 6 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
fithic -f fithic_fragment_5K.gz -i fithic_replicate_contact_5K_chr6.gz -o /home/ubuntu/loop_analyzer/data/hub/replicate/fithic/chr6/ -r 5000
end=$(date +%s)
echo "At 5K replicate chr 6 Elapsed Time: $(($end-$start)) seconds"



#===================================================
#========================K562=======================
#===================================================

start=$(date +%s)
fithic -f fithic_fragment_10K.gz -i fithic_K562_contact_10K_chr1.gz -o /home/ubuntu/loop_analyzer/data/hub/K562/fithic/chr1/ -r 10000
end=$(date +%s)
echo "At 10K K562 chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
fithic -f fithic_fragment_5K.gz -i fithic_K562_contact_5K_chr1.gz -o /home/ubuntu/loop_analyzer/data/hub/K562/fithic/chr1/ -r 5000
end=$(date +%s)
echo "At 5K K562 chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
fithic -f fithic_fragment_10K.gz -i fithic_K562_contact_10K_chr6.gz -o /home/ubuntu/loop_analyzer/data/hub/K562/fithic/chr6/ -r 10000
end=$(date +%s)
echo "At 10K K562 chr 6 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
fithic -f fithic_fragment_5K.gz -i fithic_K562_contact_5K_chr6.gz -o /home/ubuntu/loop_analyzer/data/hub/K562/fithic/chr6/ -r 5000
end=$(date +%s)
echo "At 5K K562 chr 6 Elapsed Time: $(($end-$start)) seconds"



===============================================================
=========================Normalized============================
===============================================================


#!/bin/bash

exec > fithic_normKR.log 2>&1

python3 createFitHiCContacts-hic.py --HiCFile /storage/store/mohit/data/GM12878_primary_30.hic --CHR1 1 --CHR2 1 --Norm KR --resolution 10000 --outFile fithic_primary_KR_contact_chr1_10k &
python3 createFitHiCContacts-hic.py --HiCFile /storage/store/mohit/data/GM12878_primary_30.hic --CHR1 1 --CHR2 1 --Norm KR --resolution 5000 --outFile fithic_primary_KR_contact_chr1_5k &
python3 createFitHiCContacts-hic.py --HiCFile /storage/store/mohit/data/GM12878_primary_30.hic --CHR1 6 --CHR2 6 --Norm KR --resolution 10000 --outFile fithic_primary_KR_contact_chr6_10k &
python3 createFitHiCContacts-hic.py --HiCFile /storage/store/mohit/data/GM12878_primary_30.hic --CHR1 6 --CHR2 6 --Norm KR --resolution 5000 --outFile fithic_primary_KR_contact_chr6_5k &
python3 createFitHiCFragments-fixedsize.py --chrLens hg19.chrom.sizes --outFile fithic_fragment_10K.gz --resolution 10000 &
python3 createFitHiCFragments-fixedsize.py --chrLens hg19.chrom.sizes --outFile fithic_fragment_5K.gz --resolution 5000 &
wait

gzip fithic_primary_KR_contact_chr1_10k &
gzip fithic_primary_KR_contact_chr1_5k &
gzip fithic_primary_KR_contact_chr6_10k &
gzip fithic_primary_KR_contact_chr6_5k &
wait

#===================================================
#=======================Normalized==================
#===================================================

start=$(date +%s)
fithic -f fithic_fragment_10K.gz -i fithic_primary_KR_contact_chr1_10k.gz -o ./chr1_10k/ -r 10000
end=$(date +%s)
echo "#primary_normKR chr 1 @10k, elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
fithic -f fithic_fragment_5K.gz -i fithic_primary_KR_contact_chr1_5k.gz -o ./chr1_5k/ -r 5000
end=$(date +%s)
echo "#primary_normKR chr 1 @5k, elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
fithic -f fithic_fragment_10K.gz -i fithic_primary_KR_contact_chr6_10k.gz -o ./chr6_10k/ -r 10000
end=$(date +%s)
echo "#primary_normKR chr 6 @10k, elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
fithic -f fithic_fragment_5K.gz -i fithic_primary_KR_contact_chr6_5k.gz -o ./chr6_5k/ -r 5000
end=$(date +%s)
echo "#primary_normKR chr 6 @5k, elapsed time: $(($end-$start)) seconds"




#===================================================
#=======================replicate==================
#===================================================


#!/bin/bash

exec > fithic_replicate.log 2>&1

python3 createFitHiCContacts-hic.py --HiCFile /storage/store/mohit/data/GSE63525_GM12878_insitu_replicate_30.hic --CHR1 1 --CHR2 1 --Norm KR --resolution 10000 --outFile fithic_replicate_KR_contact_chr1_10k &
python3 createFitHiCContacts-hic.py --HiCFile /storage/store/mohit/data/GSE63525_GM12878_insitu_replicate_30.hic --CHR1 1 --CHR2 1 --Norm KR --resolution 5000 --outFile fithic_replicate_KR_contact_chr1_5k &
python3 createFitHiCContacts-hic.py --HiCFile /storage/store/mohit/data/GSE63525_GM12878_insitu_replicate_30.hic --CHR1 6 --CHR2 6 --Norm KR --resolution 10000 --outFile fithic_replicate_KR_contact_chr6_10k &
python3 createFitHiCContacts-hic.py --HiCFile /storage/store/mohit/data/GSE63525_GM12878_insitu_replicate_30.hic --CHR1 6 --CHR2 6 --Norm KR --resolution 5000 --outFile fithic_replicate_KR_contact_chr6_5k &
python3 createFitHiCFragments-fixedsize.py --chrLens hg19.chrom.sizes --outFile fithic_fragment_10K.gz --resolution 10000 &
python3 createFitHiCFragments-fixedsize.py --chrLens hg19.chrom.sizes --outFile fithic_fragment_5K.gz --resolution 5000 &
wait

gzip fithic_replicate_KR_contact_chr1_10k &
gzip fithic_replicate_KR_contact_chr1_5k &
gzip fithic_replicate_KR_contact_chr6_10k &
gzip fithic_replicate_KR_contact_chr6_5k &
wait



start=$(date +%s)
fithic -f fithic_fragment_10K.gz -i fithic_replicate_KR_contact_chr1_10k.gz -o ./chr1_10k/ -r 10000
end=$(date +%s)
echo "#replicate_normKR chr 1 @10k, elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
fithic -f fithic_fragment_5K.gz -i fithic_replicate_KR_contact_chr1_5k.gz -o ./chr1_5k/ -r 5000
end=$(date +%s)
echo "#replicate_normKR chr 1 @5k, elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
fithic -f fithic_fragment_10K.gz -i fithic_replicate_KR_contact_chr6_10k.gz -o ./chr6_10k/ -r 10000
end=$(date +%s)
echo "#replicate_normKR chr 6 @10k, elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
fithic -f fithic_fragment_5K.gz -i fithic_replicate_KR_contact_chr6_5k.gz -o ./chr6_5k/ -r 5000
end=$(date +%s)
echo "#replicate_normKR chr 6 @5k, elapsed time: $(($end-$start)) seconds"
