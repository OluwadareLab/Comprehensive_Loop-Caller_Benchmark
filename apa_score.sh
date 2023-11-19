#!/bin/bash

exec > apa_replicate.log 2>&1

#HiCExplorer
echo "generating hicexplorer plots"
apa-analysis -O hicexplorer.chr1_5k.apa.png -p /storage/store/mohit/data/GM12878_primary_30_5000.cool::/ -I /storage/store/mohit/data/hicexplorer/GM12878_chr1_5k.bedgraph --vmax 2 &
apa-analysis -O hicexplorer.chr1_10k.apa.png -p /storage/store/mohit/data/GM12878_primary_30_10000.cool::/ -I /storage/store/mohit/data/hicexplorer/GM12878_chr1_10k.bedgraph --vmax 2 &
apa-analysis -O hicexplorer.chr6_5k.apa.png -p /storage/store/mohit/data/GM12878_primary_30_5000.cool::/ -I /storage/store/mohit/data/hicexplorer/GM12878_chr6_5k.bedgraph --vmax 2 &
apa-analysis -O hicexplorer.chr6_10k.apa.png -p /storage/store/mohit/data/GM12878_primary_30_10000.cool::/ -I /storage/store/mohit/data/hicexplorer/GM12878_chr6_10k.bedgraph --vmax 2 &
wait
echo "ending hicexplorer plots"

#SIP
echo "generating sip plots"
apa-analysis -O sip.chr1_5k.apa.png -p /storage/store/mohit/data/GM12878_primary_30_5000.cool::/ -I /storage/store/mohit/data/sip/GM12878_chr1_5k.txt --vmax 2 &
apa-analysis -O sip.chr1_10k.apa.png -p /storage/store/mohit/data/GM12878_primary_30_10000.cool::/ -I /storage/store/mohit/data/sip/GM12878_chr1_10k.txt --vmax 2 &
apa-analysis -O sip.chr6_5k.apa.png -p /storage/store/mohit/data/GM12878_primary_30_5000.cool::/ -I /storage/store/mohit/data/sip/GM12878_chr6_5k.txt --vmax 2 &
apa-analysis -O sip.chr6_10k.apa.png -p /storage/store/mohit/data/GM12878_primary_30_10000.cool::/ -I /storage/store/mohit/data/sip/GM12878_chr6_10k.txt --vmax 2 &
wait
echo "ending sip plots"

#HiCExplorer
echo "generating hicexplorer plots"
apa-analysis -O hicexplorer.chr1_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/hicexplorer/GM12878_chr1_5k.bedgraph --vmax 2 &
apa-analysis -O hicexplorer.chr1_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/hicexplorer/GM12878_chr1_10k.bedgraph --vmax 2 &
apa-analysis -O hicexplorer.chr6_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/hicexplorer/GM12878_chr6_5k.bedgraph --vmax 2 &
apa-analysis -O hicexplorer.chr6_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/hicexplorer/GM12878_chr6_10k.bedgraph --vmax 2 &
wait
echo "ending hicexplorer plots"

#SIP
echo "generating sip plots"
apa-analysis -O sip.chr1_5k.apa.png -p /storage/store/mohit/data/replicate/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/replicate/sip/GM12878_chr1_5k.txt --vmax 2 &
apa-analysis -O sip.chr1_10k.apa.png -p /storage/store/mohit/data/replicate/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/replicate/sip/GM12878_chr1_10k.txt --vmax 2 &
apa-analysis -O sip.chr6_5k.apa.png -p /storage/store/mohit/data/replicate/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/replicate/sip/GM12878_chr6_5k.txt --vmax 2 &
apa-analysis -O sip.chr6_10k.apa.png -p /storage/store/mohit/data/replicate/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/replicate/sip/GM12878_chr6_10k.txt --vmax 2 &
wait
echo "ending sip plots"

#HiCExplorer
echo "generating hicexplorer plots"
apa-analysis -O hicexplorer.chr1_5k.apa.png -p /storage/store/mohit/data/replicate/GM12878_replicate_5000.cool::/ -I /storage/store/mohit/data/replicate/hicexplorer/GM12878_5k_chr1.bedgraph --vmax 2 &
apa-analysis -O hicexplorer.chr1_10k.apa.png -p /storage/store/mohit/data/replicate/GM12878_replicate_10000.cool::/ -I /storage/store/mohit/data/replicate/hicexplorer/GM12878_10k_chr1.bedgraph --vmax 2 &
apa-analysis -O hicexplorer.chr6_5k.apa.png -p /storage/store/mohit/data/replicate/GM12878_replicate_5000.cool::/ -I /storage/store/mohit/data/replicate/hicexplorer/GM12878_5k_chr6.bedgraph --vmax 2 &
apa-analysis -O hicexplorer.chr6_10k.apa.png -p /storage/store/mohit/data/replicate/GM12878_replicate_10000.cool::/ -I /storage/store/mohit/data/replicate/hicexplorer/GM12878_10k_chr6.bedgraph --vmax 2 &
wait
echo "ending hicexplorer plots"