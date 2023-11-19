#!/bin/bash

exec > fithichip.log 2>&1


start=$(date +%s)
bash ./FitHiChIP_HiCPro.sh -C ./configfile_BiasCorrection_CoverageBias
end=$(date +%s)
echo "At 10K primary chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
bash ./FitHiChIP_HiCPro.sh -C ./configfile_BiasCorrection_CoverageBias
end=$(date +%s)
echo "At 10K primary chr 6 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
bash ./FitHiChIP_HiCPro.sh -C ./configfile_BiasCorrection_CoverageBias
end=$(date +%s)
echo "At 5K primary chr 1 Elapsed Time: $(($end-$start)) seconds"

start=$(date +%s)
bash ./FitHiChIP_HiCPro.sh -C ./configfile_BiasCorrection_CoverageBias
end=$(date +%s)
echo "At 5K primary chr 6 Elapsed Time: $(($end-$start)) seconds"


GSE63525_GM12878_insitu_primary_30_chr1_10000.cool


cp TestData/chrom_hg19.sizes raw_analysis/
cp TestData/Sample.Peaks.gz raw_analysis/
cp TestData/Sample_ValidPairs.txt.gz raw_analysis/

cp chrom_hg19.sizes 10000/primary/chr1/
cp chrom_hg19.sizes 10000/primary/chr6/
cp chrom_hg19.sizes 5000/primary/chr1/
cp chrom_hg19.sizes 5000/primary/chr6/

cp FitHiChIP_HiCPro.sh raw_analysis/10000/primary/chr1/
cp FitHiChIP_HiCPro.sh raw_analysis/10000/primary/chr6/
cp FitHiChIP_HiCPro.sh raw_analysis/5000/primary/chr1/
cp FitHiChIP_HiCPro.sh raw_analysis/5000/primary/chr6/



/home/ubuntu/loop_analyzer/data/hub/GSE63525_GM12878_insitu_primary_30_chr1_10000.cool
/home/ubuntu/loop_analyzer/data/hub/GSE63525_GM12878_insitu_primary_30_chr6_10000.cool

/home/ubuntu/loop_analyzer/data/hub/GSE63525_GM12878_insitu_primary_30_chr1_5000.cool
/home/ubuntu/loop_analyzer/data/hub/GSE63525_GM12878_insitu_primary_30_chr6_5000.cool


bash ./10000/primary/chr1/FitHiChIP_HiCPro.sh -C ./10000/primary/chr1/configfile_BiasCorrection_CoverageBias
bash ./10000/primary/chr6/FitHiChIP_HiCPro.sh -C ./10000/primary/chr6/configfile_BiasCorrection_CoverageBias
bash ./5000/primary/chr1/FitHiChIP_HiCPro.sh -C ./5000/primary/chr1/configfile_BiasCorrection_CoverageBias
bash ./5000/primary/chr6/FitHiChIP_HiCPro.sh -C ./5000/primary/chr6/configfile_BiasCorrection_CoverageBias

/storage/store/mohit/data/GM12878_primary_30_5000.cool
/storage/store/mohit/data/GM12878_primary_30_10000.cool

/storage/store/mohit/data/FitHiChIP/result

#===================================================
#======================Primary===================
#===================================================

#!/bin/bash


exec > fithichip.log 2>&1

start=$(date +%s)
bash FitHiChIP_HiCPro.sh -C config_5k
end=$(date +%s)
echo "primary @5K, elapsed time: $(($end-$start)) seconds"


start=$(date +%s)
bash FitHiChIP_HiCPro.sh -C config_10k
end=$(date +%s)
echo "primary @10K, elapsed time: $(($end-$start)) seconds"



/storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool

/storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool

#===================================================
#======================Normalized===================
#===================================================

#!/bin/bash


exec > fithichip_normKR.log 2>&1

start=$(date +%s)
bash FitHiChIP_HiCPro.sh -C config_5k
end=$(date +%s)
echo "primary_normKR @5K, elapsed time: $(($end-$start)) seconds"


start=$(date +%s)
bash FitHiChIP_HiCPro.sh -C config_10k
end=$(date +%s)
echo "primary_normKR @10K, elapsed time: $(($end-$start)) seconds"





/storage/store/mohit/data/replicate/GM12878_replicate_5000.cool
/storage/store/mohit/data/replicate/GM12878_replicate_10000.cool

#===================================================
#======================Replicate===================
#===================================================

#!/bin/bash


exec > fithichip.log 2>&1

start=$(date +%s)
bash FitHiChIP_HiCPro.sh -C config_5k
end=$(date +%s)
echo "primary_normKR @5K, elapsed time: $(($end-$start)) seconds"


start=$(date +%s)
bash FitHiChIP_HiCPro.sh -C config_10k
end=$(date +%s)
echo "primary_normKR @10K, elapsed time: $(($end-$start)) seconds"







import hicstraw

output = open('GM12878_primary_chr1_10000.txt', 'w')
result = hicstraw.straw('observed', 'NONE', 'GM12878_primary_30.hic', '1', '1', 'BP', 10000)
for i in range(len(result)):
    row = "{0}\t{1}\t{2}\n".format(result[i].binX, result[i].binY, result[i].counts)
	output.write(row)
output.close()

output = open('GM12878_primary_chr6_10000.txt', 'w')
result = hicstraw.straw('observed', 'NONE', 'GM12878_primary_30.hic', '6', '6', 'BP', 10000)
for i in range(len(result)):
    row = "{0}\t{1}\t{2}\n".format(result[i].binX, result[i].binY, result[i].counts)
	output.write(row)
output.close()

output = open('GM12878_primary_chr1_5000.txt', 'w')
result = hicstraw.straw('observed', 'NONE', 'GM12878_primary_30.hic', '1', '1', 'BP', 5000)
for i in range(len(result)):
    row = "{0}\t{1}\t{2}\n".format(result[i].binX, result[i].binY, result[i].counts)
	output.write(row)
output.close()

output = open('GM12878_primary_chr6_5000.txt', 'w')
result = hicstraw.straw('observed', 'NONE', 'GM12878_primary_30.hic', '6', '6', 'BP', 5000)
for i in range(len(result)): 
	row = "{0}\t{1}\t{2}\n".format(result[i].binX, result[i].binY, result[i].counts)
	output.write(row)
output.close()