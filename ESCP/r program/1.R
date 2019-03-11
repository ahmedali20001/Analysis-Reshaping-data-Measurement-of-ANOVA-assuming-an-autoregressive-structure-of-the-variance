#Part 2, Q1

getwd()
mydata <- read.csv(file="kim.csv",header=TRUE, sep=",")
class(mydata)

mydata$depr_t1 <- rowSums(mydata[c("v1_t1", "v2_t1", "v3_t1", "v4_t1", "v5_t1")])
mydata$depr_t2 <- rowSums(mydata[c("v1_t2", "v2_t2", "v3_t2", "v4_t2", "v5_t2")])
mydata$depr_t3 <- rowSums(mydata[c("v1_t3", "v2_t3", "v3_t3", "v4_t3", "v5_t3")])

library(tidyr)
mydata2 <- spread(mydata,depr_t1,depr_t2,depr_t3) 
head(mydata2)

gather(mydata2,subj,treat,-1)

#repeated measure Anova()
install.packages('lmerTest')
install.packages('anova')

library(lme4)
library(lmerTest)

anoModel <- lmer(mydata$v1_t1 ~ mydata$v2_t1
                 + (1|subj), data= mydata2 )
anova(anoModel)

