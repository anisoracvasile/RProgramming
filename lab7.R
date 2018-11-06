
#Problema 1
library("UsingR")

data(normtemp)
dataset = normtemp
attach(dataset)
?normtemp
summary(normtemp)

#a
t.test(normtemp, alternative="less")

#b
plot(normtemp)

#c
tempFemei=gender[am==1]
tempBarbati=gender[am==0]

t.test(tempFemei, tempBarbati, mu = 0, alternative = "less", paired=F)

#d

temp = temperature
puls = hr

plot(temp, puls)
t.test(temp, puls, mu = 0, alternative = "less", paired=T)

#Problema 2
data(babies)
dataset = babies

#Problema 3
library("PASWR")
data(Battery)
Battery$facilityA
Battery$facilityB

t.test(Battery$facilityA, mu=0, alternative = "less")
t.test(Battery$facilityB, mu=0, alternative = "less")

#Problema 4
install.packages("MASS")
library("MASS")
data(shoes)
dataset = shoes
attach(dataset)
?shoes

#a
plot(density(shoes$A))
plot(density(shoes$B))

#b
wilcox.test(shoes$A, shoes$B, alternative = "two.sided", paired = T)
