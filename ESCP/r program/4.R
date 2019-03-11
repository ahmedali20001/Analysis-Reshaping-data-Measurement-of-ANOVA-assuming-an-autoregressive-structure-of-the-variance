mydata <- within(mydata, {
  treat <- factor(treat)
  subj <- factor(time)
})

par(cex = .6)

with(mydata, interaction.plot(subj, treat, depr_t1,
                              ylim = c(1, 6), lty= c(1, 12), lwd = 3,
                              ylab = "mean of depr_t1", xlab = "subj", trace.label = "treat"))

mydata.aov <- aov(depr_t1 ~ treat * subj + Error(subj), data = mydata)
summary(mydata.aov)
