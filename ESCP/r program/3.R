attach(mydata)
plot(subj, treat='treatment', main="Control Group", 
     xlab="Baseline(Months)", ylab="Depression Score", pch=18)

plot(subj, treat='control', main="Control Group", 
     xlab="Baseline(Months)", ylab="Depression Score", pch=18)
head(mydata)
