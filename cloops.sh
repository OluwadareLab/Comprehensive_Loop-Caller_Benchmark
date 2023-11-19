#!/bin/bash

exec > cloops.log 2>&1

#===================================================
#=======================Primary=====================
#===================================================
start=$(date +%s)
cLoops -f /storage/store/mohit/data/GM12878_primary_30.bedpe -o hic_chr1 -w -j -eps 5000,7500,10000 -minPts 20,30,40,50 -s -hic -m 3 -c chr1
end=$(date +%s)
echo "primary chr 1, elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
cLoops -f /storage/store/mohit/data/GM12878_primary_30.bedpe -o hic_chr6 -w -j -eps 5000,7500,10000 -minPts 20,30,40,50 -s -hic -m 3 -c chr6
end=$(date +%s)
echo "primary chr 6, elapsed time: $(($end-$start)) seconds"


#===================================================
#====================Normalized=====================
#===================================================

#!/bin/bash

exec > cloops_normKR.log 2>&1

start=$(date +%s)
cLoops -f /storage/store/mohit/data/kr_norm/GM12878_primary_KR_chr1_5k.bedpe -o hic -w -j -eps 5000,7500,10000 -minPts 20,30 -s -hic -c 1
end=$(date +%s)
echo "primary_normKR chr 1 @5k eps, elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
cLoops -f /storage/store/mohit/data/kr_norm/GM12878_primary_KR_chr1_10k.bedpe -o hic -w -j -eps 5000,7500,10000 -minPts 20,30 -s -hic -c 1
end=$(date +%s)
echo "primary_normKR chr 1 @10k eps, elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
cLoops -f /storage/store/mohit/data/kr_norm/GM12878_primary_KR_chr6_5k.bedpe -o hic -w -j -eps 5000,7500,10000 -minPts 20,30 -s -hic -c 6
end=$(date +%s)
echo "primary_normKR chr 6 @5k eps, elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
cLoops -f /storage/store/mohit/data/kr_norm/GM12878_primary_KR_chr6_10k.bedpe -o hic -w -j -eps 5000,7500,10000 -minPts 20,30 -s -hic -c 6
end=$(date +%s)
echo "primary_normKR chr 6 @10k eps, elapsed time: $(($end-$start)) seconds"


#===================================================
#====================Replicate=====================
#===================================================

#!/bin/bash

exec > cloops_replicate.log 2>&1


start=$(date +%s)
cLoops -f /storage/store/mohit/data/replicate/GM12878_replicate.bedpe -o hic_chr1 -w -j -eps 5000,7500,10000 -minPts 20,30,40,50 -s -hic -m 3 -c chr1
end=$(date +%s)
echo "replicate chr 1, elapsed time: $(($end-$start)) seconds"

start=$(date +%s)
cLoops -f /storage/store/mohit/data/replicate/GM12878_replicate.bedpe -o hic_chr6 -w -j -eps 5000,7500,10000 -minPts 20,30,40,50 -s -hic -m 3 -c chr6
end=$(date +%s)
echo "replicate chr 6, elapsed time: $(($end-$start)) seconds"




my_log <- file("cooler2bedpe.log", open = 'a')
sink(my_log, append = TRUE, type = "output")
sink(my_log, append = TRUE, type = "message")

library(HiCcompare)

v_input <- cooler2bedpe('GM12878_primary_KR_chr6_10000.cool')
v_input <- as.data.frame(v_input$cis)
v_output <- file('GM12878_primary_KR_chr6_10000.bedpe', open = 'a')
v_count <- 0
for (row in 1:nrow(v_input)) {
    v_data <- v_input[row,]
	if(length(v_data) < 7) {
		print(v_data)
		v_count++
		continue
	}
	writeLines(v_data, v_output)
}

close(v_input)
close(v_output)
print(v_count)


my_log <- file("cooler2bedpe.log", open = 'a')
sink(my_log, append = TRUE, type = "output")
sink(my_log, append = TRUE, type = "message")

library(HiCcompare)

v_input <- cooler2bedpe('GM12878_replicate_chr1_10000.cool')
v_input <- as.data.frame(v_input$cis)
v_output <- file('GM12878_replicate_chr1_10000.bedpe', open = 'a')
write.table(v_input, v_output)

v_input <- cooler2bedpe('GM12878_replicate_chr1_5000.cool')
v_input <- as.data.frame(v_input$cis)
v_output <- file('GM12878_replicate_chr1_5000.bedpe', open = 'a')
write.table(v_input, v_output)

v_input <- cooler2bedpe('GM12878_replicate_chr6_10000.cool')
v_input <- as.data.frame(v_input$cis)
v_output <- file('GM12878_replicate_chr6_10000.bedpe', open = 'a')
write.table(v_input, v_output)

v_input <- cooler2bedpe('GM12878_replicate_chr6_5000.cool')
v_input <- as.data.frame(v_input$cis)
v_output <- file('GM12878_replicate_chr6_5000.bedpe', open = 'a')
write.table(v_input, v_output)