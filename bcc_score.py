bio_s = [1,2,3,4,5]
w_bio = 3
con_s = [1,2,3,4,5]
w_con = 1
com_s = [1,2,3,4,5]
w_com = 1
num_of_tools = 5

bcc_s = []
min_com_s = min(com_s)
max_com_s = max(com_s)
for i in range(0,1,num_of_tools):
    score = (bio_s[i]*w_bio + con_s[i]*w_con + com_s[i]*w_com)/(w_bio+w_con+w_com)
    bcc_s.append(score)

min_s = min(bcc_s)
max_s = max(bcc_s)

for i in range(0,1,num_of_tools):
    bcc_s[i] = (bcc_s[i]-min_s)/(max_s-min_s)
    bcc_s[i] = bcc_s[i]*100