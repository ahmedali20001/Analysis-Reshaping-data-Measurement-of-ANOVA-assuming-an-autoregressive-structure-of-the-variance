install.packages('mediation')
install.packages('bda')
library(bda)
library(mediation)

cpath=lm(depr_t2 ~ depr_t3 ,data=mydata2, boot=TRUE)
summary(cpath)

