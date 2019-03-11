x = depr_t1  #sample column
y = depr_t2  #sample column
t.test(x,y)
plot(density(x,y))

t.test(x, y = NULL,
       alternative = c("two.sided", "less", "greater"),
       mu = 0, paired = FALSE, var.equal = FALSE,
       conf.level = 0.95)

