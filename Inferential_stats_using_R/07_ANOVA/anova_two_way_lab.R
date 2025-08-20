#Objective 1
data1=data.frame(Analyst = rep(1:5, 3),Method = rep(c("M1", "M2", "M3"), each = 5),Value = c(7.5, 7.4, 7.3, 7.6, 7.4, 7.0, 7.2, 7.0, 7.2, 7.1, 7.1, 6.7, 6.9, 6.8, 6.9));data1
# Two-way ANOVA
anova1=aov(Value ~ Method + Analyst, data = data1)
summary(anova1)
# Tukey's HSD test
tukey1=TukeyHSD(anova1, "Method");tukey1

#Objective 2
data2=data.frame(
Gender = rep(c("Male", "Female"), each = 12),
Noise = rep(c("Low", "Medium", "Loud"),each= 4),
Marks = c(10, 12, 11, 9, 7, 9, 8, 12, 4, 5, 6, 5,12, 13, 10, 13, 13, 15, 12, 12, 6, 6, 4, 4));data2
# Two-way ANOVA
anova2 <- aov(Marks ~ Gender + Noise + Gender:Noise, data = data2)
summary(anova2)

