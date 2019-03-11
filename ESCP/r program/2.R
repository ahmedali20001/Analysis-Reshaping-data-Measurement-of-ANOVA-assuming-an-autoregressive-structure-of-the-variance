# refactored your code and supplied the same data & na.action

reduced_model <- lm(formula = treat ~ 
                      v1_t1 + 
                      v2_t1 + 
                      v3_t1 +
                      v4_t1 +
                      v5_t1,
                    data = mydata,
                    na.action=na.omit)

full_model <- lm(formula = treat ~ 
                   mydata$depr_t1 + 
                   mydata$depr_t2 +
                   mydata$depr_t3 +,
                 data = mydata2,
                 na.action=na.omit)



# based on f-test
anova(reduced_model, full_model)

# based on chi-square test
anova(reduced_model, full_model)
