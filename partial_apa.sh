exec > partial_apa.log 2>&1

#Peakachu
echo "generating peakachu plots"
peak-plot -O peakachu.chr1_5k.peaks.png -p /storage/store/mohit/data/GM12878_primary_30_5000.cool::/ -I /storage/store/mohit/data/peakachu/GM12878_chr1_5k.bedpe -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O peakachu.chr1_10k.peaks.png -p /storage/store/mohit/data/GM12878_primary_30_10000.cool::/ -I /storage/store/mohit/data/peakachu/GM12878_chr1_10k.bedpe -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O peakachu.chr6_5k.peaks.png -p /storage/store/mohit/data/GM12878_primary_30_5000.cool::/ -I /storage/store/mohit/data/peakachu/GM12878_chr6_5k.bedpe -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O peakachu.chr6_10k.peaks.png -p /storage/store/mohit/data/GM12878_primary_30_10000.cool::/ -I /storage/store/mohit/data/peakachu/GM12878_chr6_10k.bedpe -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
apa-analysis -O peakachu.chr1_5k.apa.png -p /storage/store/mohit/data/GM12878_primary_30_5000.cool::/ -I /storage/store/mohit/data/peakachu/GM12878_chr1_5k.bedpe --vmax 2 &
apa-analysis -O peakachu.chr1_10k.apa.png -p /storage/store/mohit/data/GM12878_primary_30_10000.cool::/ -I /storage/store/mohit/data/peakachu/GM12878_chr1_10k.bedpe --vmax 2 &
apa-analysis -O peakachu.chr6_5k.apa.png -p /storage/store/mohit/data/GM12878_primary_30_5000.cool::/ -I /storage/store/mohit/data/peakachu/GM12878_chr6_5k.bedpe --vmax 2 &
apa-analysis -O peakachu.chr6_10k.apa.png -p /storage/store/mohit/data/GM12878_primary_30_10000.cool::/ -I /storage/store/mohit/data/peakachu/GM12878_chr6_10k.bedpe --vmax 2 &
wait
echo "ending peakachu plots"

#FitHiC
echo "generating fithic plots"
peak-plot -O fithic.chr1_5k.peaks.png -p /storage/store/mohit/data/GM12878_primary_30_5000.cool::/ -I /storage/store/mohit/data/fithic/GM12878_chr1_5k.txt -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O fithic.chr1_10k.peaks.png -p /storage/store/mohit/data/GM12878_primary_30_10000.cool::/ -I /storage/store/mohit/data/fithic/GM12878_chr1_10k.txt -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O fithic.chr6_5k.peaks.png -p /storage/store/mohit/data/GM12878_primary_30_5000.cool::/ -I /storage/store/mohit/data/fithic/GM12878_chr6_5k.txt -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O fithic.chr6_10k.peaks.png -p /storage/store/mohit/data/GM12878_primary_30_10000.cool::/ -I /storage/store/mohit/data/fithic/GM12878_chr6_10k.txt -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
apa-analysis -O fithic.chr1_5k.apa.png -p /storage/store/mohit/data/GM12878_primary_30_5000.cool::/ -I /storage/store/mohit/data/fithic/GM12878_chr1_5k.txt --vmax 2 &
apa-analysis -O fithic.chr1_10k.apa.png -p /storage/store/mohit/data/GM12878_primary_30_10000.cool::/ -I /storage/store/mohit/data/fithic/GM12878_chr1_10k.txt --vmax 2 &
apa-analysis -O fithic.chr6_5k.apa.png -p /storage/store/mohit/data/GM12878_primary_30_5000.cool::/ -I /storage/store/mohit/data/fithic/GM12878_chr6_5k.txt --vmax 2 &
apa-analysis -O fithic.chr6_10k.apa.png -p /storage/store/mohit/data/GM12878_primary_30_10000.cool::/ -I /storage/store/mohit/data/fithic/GM12878_chr6_10k.txt --vmax 2 &
wait
echo "ending fithic plots"

#SIP
echo "generating sip plots"
peak-plot -O sip.chr1_5k.peaks.png -p /storage/store/mohit/data/GM12878_primary_30_5000.cool::/ -I /storage/store/mohit/data/sip/GM12878_chr1_5k.txt -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O sip.chr1_10k.peaks.png -p /storage/store/mohit/data/GM12878_primary_30_10000.cool::/ -I /storage/store/mohit/data/sip/GM12878_chr1_10k.txt -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O sip.chr6_5k.peaks.png -p /storage/store/mohit/data/GM12878_primary_30_5000.cool::/ -I /storage/store/mohit/data/sip/GM12878_chr6_5k.txt -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O sip.chr6_10k.peaks.png -p /storage/store/mohit/data/GM12878_primary_30_10000.cool::/ -I /storage/store/mohit/data/sip/GM12878_chr6_10k.txt -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
apa-analysis -O sip.chr1_5k.apa.png -p /storage/store/mohit/data/GM12878_primary_30_5000.cool::/ -I /storage/store/mohit/data/sip/GM12878_chr1_5k.txt --vmax 2 &
apa-analysis -O sip.chr1_10k.apa.png -p /storage/store/mohit/data/GM12878_primary_30_10000.cool::/ -I /storage/store/mohit/data/sip/GM12878_chr1_10k.txt --vmax 2 &
apa-analysis -O sip.chr6_5k.apa.png -p /storage/store/mohit/data/GM12878_primary_30_5000.cool::/ -I /storage/store/mohit/data/sip/GM12878_chr6_5k.txt --vmax 2 &
apa-analysis -O sip.chr6_10k.apa.png -p /storage/store/mohit/data/GM12878_primary_30_10000.cool::/ -I /storage/store/mohit/data/sip/GM12878_chr6_10k.txt --vmax 2 &
wait
echo "ending sip plots"



exec > partial_apa.log 2>&1

#Peakachu
echo "generating peakachu plots"
peak-plot -O peakachu.chr1_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/peakachu/GM12878_chr1_5k.bedpe -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O peakachu.chr1_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/peakachu/GM12878_chr1_10k.bedpe -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O peakachu.chr6_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/peakachu/GM12878_chr6_5k.bedpe -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O peakachu.chr6_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/peakachu/GM12878_chr6_10k.bedpe -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
apa-analysis -O peakachu.chr1_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/peakachu/GM12878_chr1_5k.bedpe --vmax 2 &
apa-analysis -O peakachu.chr1_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/peakachu/GM12878_chr1_10k.bedpe --vmax 2 &
apa-analysis -O peakachu.chr6_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/peakachu/GM12878_chr6_5k.bedpe --vmax 2 &
apa-analysis -O peakachu.chr6_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/peakachu/GM12878_chr6_10k.bedpe --vmax 2 &
wait
echo "ending peakachu plots"

#SIP
echo "generating sip plots"
peak-plot -O sip.chr1_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/sip/GM12878_chr1_5k.txt -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O sip.chr1_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/sip/GM12878_chr1_10k.txt -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O sip.chr6_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/sip/GM12878_chr6_5k.txt -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O sip.chr6_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/sip/GM12878_chr6_10k.txt -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
apa-analysis -O sip.chr1_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/sip/GM12878_chr1_5k.txt --vmax 2 &
apa-analysis -O sip.chr1_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/sip/GM12878_chr1_10k.txt --vmax 2 &
apa-analysis -O sip.chr6_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/sip/GM12878_chr6_5k.txt --vmax 2 &
apa-analysis -O sip.chr6_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/sip/GM12878_chr6_10k.txt --vmax 2 &
wait
echo "ending sip plots"

#FitHiC
echo "generating fithic plots"
peak-plot -O fithic.chr1_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/fithic/GM12878_chr1_5k.txt -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O fithic.chr1_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/fithic/GM12878_chr1_10k.txt -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O fithic.chr6_5k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/fithic/GM12878_chr6_5k.txt -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O fithic.chr6_10k.peaks.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/fithic/GM12878_chr6_10k.txt -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
apa-analysis -O fithic.chr1_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/fithic/GM12878_chr1_5k.txt --vmax 2 &
apa-analysis -O fithic.chr1_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/fithic/GM12878_chr1_10k.txt --vmax 2 &
apa-analysis -O fithic.chr6_5k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_5000.cool::/ -I /storage/store/mohit/data/kr_norm/fithic/GM12878_chr6_5k.txt --vmax 2 &
apa-analysis -O fithic.chr6_10k.apa.png -p /storage/store/mohit/data/kr_norm/GM12878_primary_30_KR_10000.cool::/ -I /storage/store/mohit/data/kr_norm/fithic/GM12878_chr6_10k.txt --vmax 2 &
wait
echo "ending fithic plots"



exec > partial_apa.log 2>&1



#Peakachu
echo "generating peakachu plots"
peak-plot -O peakachu.chr1_5k.peaks.png -p /storage/store/mohit/data/replicate/GM12878_replicate_5000.cool::/ -I /storage/store/mohit/data/replicate/peakachu/GM12878_chr1_5k.bedpe -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O peakachu.chr1_10k.peaks.png -p /storage/store/mohit/data/replicate/GM12878_replicate_10000.cool::/ -I /storage/store/mohit/data/replicate/peakachu/GM12878_chr1_10k.bedpe -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O peakachu.chr6_5k.peaks.png -p /storage/store/mohit/data/replicate/GM12878_replicate_5000.cool::/ -I /storage/store/mohit/data/replicate/peakachu/GM12878_chr6_5k.bedpe -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O peakachu.chr6_10k.peaks.png -p /storage/store/mohit/data/replicate/GM12878_replicate_10000.cool::/ -I /storage/store/mohit/data/replicate/peakachu/GM12878_chr6_10k.bedpe -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
apa-analysis -O peakachu.chr1_5k.apa.png -p /storage/store/mohit/data/replicate/GM12878_replicate_5000.cool::/ -I /storage/store/mohit/data/replicate/peakachu/GM12878_chr1_5k.bedpe --vmax 2 &
apa-analysis -O peakachu.chr1_10k.apa.png -p /storage/store/mohit/data/replicate/GM12878_replicate_10000.cool::/ -I /storage/store/mohit/data/replicate/peakachu/GM12878_chr1_10k.bedpe --vmax 2 &
apa-analysis -O peakachu.chr6_5k.apa.png -p /storage/store/mohit/data/replicate/GM12878_replicate_5000.cool::/ -I /storage/store/mohit/data/replicate/peakachu/GM12878_chr6_5k.bedpe --vmax 2 &
apa-analysis -O peakachu.chr6_10k.apa.png -p /storage/store/mohit/data/replicate/GM12878_replicate_10000.cool::/ -I /storage/store/mohit/data/replicate/peakachu/GM12878_chr6_10k.bedpe --vmax 2 &
wait
echo "ending peakachu plots"

#FitHiC
echo "generating fithic plots"
peak-plot -O fithic.chr1_5k.peaks.png -p /storage/store/mohit/data/replicate/GM12878_replicate_5000.cool::/ -I /storage/store/mohit/data/replicate/fithic/GM12878_chr1_5k.txt -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O fithic.chr1_10k.peaks.png -p /storage/store/mohit/data/replicate/GM12878_replicate_10000.cool::/ -I /storage/store/mohit/data/replicate/fithic/GM12878_chr1_10k.txt -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O fithic.chr6_5k.peaks.png -p /storage/store/mohit/data/replicate/GM12878_replicate_5000.cool::/ -I /storage/store/mohit/data/replicate/fithic/GM12878_chr6_5k.txt -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O fithic.chr6_10k.peaks.png -p /storage/store/mohit/data/replicate/GM12878_replicate_10000.cool::/ -I /storage/store/mohit/data/replicate/fithic/GM12878_chr6_10k.txt -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
apa-analysis -O fithic.chr1_5k.apa.png -p /storage/store/mohit/data/replicate/GM12878_replicate_5000.cool::/ -I /storage/store/mohit/data/replicate/fithic/GM12878_chr1_5k.txt --vmax 2 &
apa-analysis -O fithic.chr1_10k.apa.png -p /storage/store/mohit/data/replicate/GM12878_replicate_10000.cool::/ -I /storage/store/mohit/data/replicate/fithic/GM12878_chr1_10k.txt --vmax 2 &
apa-analysis -O fithic.chr6_5k.apa.png -p /storage/store/mohit/data/replicate/GM12878_replicate_5000.cool::/ -I /storage/store/mohit/data/replicate/fithic/GM12878_chr6_5k.txt --vmax 2 &
apa-analysis -O fithic.chr6_10k.apa.png -p /storage/store/mohit/data/replicate/GM12878_replicate_10000.cool::/ -I /storage/store/mohit/data/replicate/fithic/GM12878_chr6_10k.txt --vmax 2 &
wait
echo "ending fithic plots"

#SIP
echo "generating sip plots"
peak-plot -O sip.chr1_5k.peaks.png -p /storage/store/mohit/data/replicate/GM12878_replicate_5000.cool::/ -I /storage/store/mohit/data/replicate/sip/GM12878_chr1_5k.txt -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O sip.chr1_10k.peaks.png -p /storage/store/mohit/data/replicate/GM12878_replicate_10000.cool::/ -I /storage/store/mohit/data/replicate/sip/GM12878_chr1_10k.txt -C 1 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O sip.chr6_5k.peaks.png -p /storage/store/mohit/data/replicate/GM12878_replicate_5000.cool::/ -I /storage/store/mohit/data/replicate/sip/GM12878_chr6_5k.txt -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
peak-plot -O sip.chr6_10k.peaks.png -p /storage/store/mohit/data/replicate/GM12878_replicate_10000.cool::/ -I /storage/store/mohit/data/replicate/sip/GM12878_chr6_10k.txt -C 6 -S 20000000 -E 25000000 --balance-type RAW --vmin 0 --vmax 0.008 --marker-size 2 --marker-linewidth 0.2 &
apa-analysis -O sip.chr1_5k.apa.png -p /storage/store/mohit/data/replicate/GM12878_replicate_5000.cool::/ -I /storage/store/mohit/data/replicate/sip/GM12878_chr1_5k.txt --vmax 2 &
apa-analysis -O sip.chr1_10k.apa.png -p /storage/store/mohit/data/replicate/GM12878_replicate_10000.cool::/ -I /storage/store/mohit/data/replicate/sip/GM12878_chr1_10k.txt --vmax 2 &
apa-analysis -O sip.chr6_5k.apa.png -p /storage/store/mohit/data/replicate/GM12878_replicate_5000.cool::/ -I /storage/store/mohit/data/replicate/sip/GM12878_chr6_5k.txt --vmax 2 &
apa-analysis -O sip.chr6_10k.apa.png -p /storage/store/mohit/data/replicate/GM12878_replicate_10000.cool::/ -I /storage/store/mohit/data/replicate/sip/GM12878_chr6_10k.txt --vmax 2 &
wait
echo "ending sip plots"

