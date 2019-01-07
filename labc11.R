install.packages("mlbench")
library(mlbench)
data(PimaIndiansDiabetes)
dataset=PimaIndiansDiabetes
attach(dataset)
names(dataset)
dataset

#1
subset(dataset,glucose !=0 & pressure!=0 & triceps!=0 & insulin!=0 & mass!=0)

#2
exp(cbind(OR = coef(m1), confint(m1)))
indiciantr=sample(1:768,75,repl=F)
dateantr=dataset[indiciantr,]
datetest=dataset[-indiciantr,]
indicival=sample(1:768,25,repl=F)
dateval=dataset[indicival,]
datetest=dataset[-indicival,]
m1=glm(diabetes~pregnant+glucose+pressure+triceps+insulin+mass+pedigree+age,family=binomial(logit),data=dataset)
summary(m1)
m1null=glm(diabetes~1,family=binomial(logit),data=dataset)
anova(m1,m1null,test="Chisq")
hoslem.test(diabetes, fitted(m1))

#3
exp(cbind(OR = coef(m1), confint(m1)))

#5
install.packages("boot")
library(boot)
cv.err=cv.glm(dataset,m1,K=10)
acuratete=1-cv.err$delta[2]
acuratete

#6
m2=glm(diabetes~+glucose+mass+pedigree+age,family=binomial(logit),data=dataset)
cv.err=cv.glm(dataset,m2,K=10)
acuratete=1-cv.err$delta[2]
acuratete


