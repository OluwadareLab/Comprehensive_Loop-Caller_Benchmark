#!/bin/bash

touch lasca.log
#touch lasca_download.log
#touch lasca_process.log
#touch lasca_py.log

#exec > lasca_download.log 2>&1

#wget -P ./../primary/ https://ftp.ncbi.nlm.nih.gov/geo/series/GSE63nnn/GSE63525/suppl/GSE63525_GM12878_insitu_primary_30.hic &
#wget -P ./../replicate/ https://ftp.ncbi.nlm.nih.gov/geo/series/GSE63nnn/GSE63525/suppl/GSE63525_GM12878_insitu_replicate_30.hic &
#wget -P ./../K562/ https://ftp.ncbi.nlm.nih.gov/geo/series/GSE63nnn/GSE63525/suppl/GSE63525_K562_combined_30.hic &
#wait

#exec > lasca.log 2>&1

#hicConvertFormat -m /home/ubuntu/loop_analyzer/data/hub/primary/GSE63525_GM12878_insitu_primary_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/hub/primary/lasca/GSE63525_GM12878_insitu_primary_30_5K_chr1.cool --resolutions 5000 --chromosome 1 &
#hicConvertFormat -m /home/ubuntu/loop_analyzer/data/hub/primary/GSE63525_GM12878_insitu_primary_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/hub/primary/lasca/GSE63525_GM12878_insitu_primary_30_5K_chr6.cool --resolutions 5000 --chromosome 6 &
#hicConvertFormat -m /home/ubuntu/loop_analyzer/data/hub/primary/GSE63525_GM12878_insitu_primary_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/hub/primary/lasca/GSE63525_GM12878_insitu_primary_30_10K_chr1.cool --resolutions 10000 --chromosome 1 &
#hicConvertFormat -m /home/ubuntu/loop_analyzer/data/hub/primary/GSE63525_GM12878_insitu_primary_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/hub/primary/lasca/GSE63525_GM12878_insitu_primary_30_10K_chr6.cool --resolutions 10000 --chromosome 6 &

#hicConvertFormat -m /home/ubuntu/loop_analyzer/data/hub/replicate/GSE63525_GM12878_insitu_replicate_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/hub/replicate/lasca/GSE63525_GM12878_insitu_replicate_30_5K_chr1.cool --resolutions 5000 --chromosome 1 &
#hicConvertFormat -m /home/ubuntu/loop_analyzer/data/hub/replicate/GSE63525_GM12878_insitu_replicate_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/hub/replicate/lasca/GSE63525_GM12878_insitu_replicate_30_5K_chr6.cool --resolutions 5000 --chromosome 6 &
#hicConvertFormat -m /home/ubuntu/loop_analyzer/data/hub/replicate/GSE63525_GM12878_insitu_replicate_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/hub/replicate/lasca/GSE63525_GM12878_insitu_replicate_30_10K_chr1.cool --resolutions 10000 --chromosome 1 &
#hicConvertFormat -m /home/ubuntu/loop_analyzer/data/hub/replicate/GSE63525_GM12878_insitu_replicate_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/hub/replicate/lasca/GSE63525_GM12878_insitu_replicate_30_10K_chr6.cool --resolutions 10000 --chromosome 6 &
#wait

#hicConvertFormat -m /home/ubuntu/loop_analyzer/data/hub/K562/GSE63525_K562_combined_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/hub/K562/lasca/GSE63525_K562_combined_30_5K_chr1.cool --resolutions 5000 --chromosome 1 &
#hicConvertFormat -m /home/ubuntu/loop_analyzer/data/hub/K562/GSE63525_K562_combined_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/hub/K562/lasca/GSE63525_K562_combined_30_5K_chr6.cool --resolutions 10000 --chromosome 6 &
#hicConvertFormat -m /home/ubuntu/loop_analyzer/data/hub/K562/GSE63525_K562_combined_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/hub/K562/lasca/GSE63525_K562_combined_30_10K_chr1.cool --resolutions 5000 --chromosome 1 &
#hicConvertFormat -m /home/ubuntu/loop_analyzer/data/hub/K562/GSE63525_K562_combined_30.hic --inputFormat hic --outputFormat cool -o /home/ubuntu/loop_analyzer/data/hub/K562/lasca/GSE63525_K562_combined_30_10K_chr6.cool --resolutions 10000 --chromosome 6 &

#wait


cooler balance /home/ubuntu/loop_analyzer/data/hub/lasca/GSE63525_GM12878_insitu_primary_30_chr1_10000.cool &
cooler balance /home/ubuntu/loop_analyzer/data/hub/lasca/GSE63525_GM12878_insitu_replicate_30_chr1_10000.cool & 
cooler balance /home/ubuntu/loop_analyzer/data/hub/lasca/GSE63525_K562_combined_30_chr1_10000.cool &
cooler balance /home/ubuntu/loop_analyzer/data/hub/lasca/GSE63525_GM12878_insitu_primary_30_chr6_10000.cool &

cooler balance /home/ubuntu/loop_analyzer/data/hub/lasca/GSE63525_GM12878_insitu_replicate_30_chr6_10000.cool &
cooler balance /home/ubuntu/loop_analyzer/data/hub/lasca/GSE63525_K562_combined_30_chr6_10000.cool &
cooler balance /home/ubuntu/loop_analyzer/data/hub/lasca/GSE63525_GM12878_insitu_primary_30_chr1_5000.cool &
cooler balance /home/ubuntu/loop_analyzer/data/hub/lasca/GSE63525_GM12878_insitu_replicate_30_chr1_5000.cool &
wait 

cooler balance /home/ubuntu/loop_analyzer/data/hub/lasca/GSE63525_K562_combined_30_chr1_5000.cool &
cooler balance /home/ubuntu/loop_analyzer/data/hub/lasca/GSE63525_GM12878_insitu_primary_30_chr6_5000.cool &
cooler balance /home/ubuntu/loop_analyzer/data/hub/lasca/GSE63525_GM12878_insitu_replicate_30_chr6_5000.cool &
cooler balance /home/ubuntu/loop_analyzer/data/hub/lasca/GSE63525_K562_combined_30_chr6_5000.cool &
wait

exec > lasca.log 2>&1
python3 lasca.py


#!/bin/bash
exec > lasca.log 2>&1
python3 lasca.py

cooler balance GM12878_primary_30_KR_5000.cool &
cooler balance GM12878_primary_30_KR_10000.cool &
wait
python3 lasca.py &
cooler balance GM12878_primary_30_KR_25000.cool &
cooler balance GM12878_primary_30_KR_50000.cool &
cooler balance GM12878_primary_30_KR_100000.cool &
wait