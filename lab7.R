
#Problema 1
library("UsingR")

data(normtemp)
dataset = normtemp
attach(dataset)
?normtemp
summary(normtemp)
names(normtemp)

#a
t.test(normtemp$temperature, mu=98.6, alternative="less")

#b
#1 - m
#2 - f
boxplot(normtemp$temperature~gender)

#c
tempFemei=normtemp$temperature[gender==2]
tempBarbati=normtemp$temperature[gender==1]

t.test(tempFemei, tempBarbati, mu = 0, alternative = "greater", paired=F)

#d

temp = temperature
puls = hr

plot(temp, puls)
cor(temp, puls)

#Problema 2
library("UsingR")
data(babies)
dataset = babies
attach(dataset)
?babies

nefum = smoke[am==3]
fum = smoke[am==1]

#Problema 3
library("PASWR")
data(Battery)
Battery$facilityA
Battery$facilityB

t.test(Battery$facilityA, Battery$facilityB, mu=0, alternative = "less")

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
