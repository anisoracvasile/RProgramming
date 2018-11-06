install.packages('PASWR')
library("PASWR")
data(Battery)
Battery$facilityA

#Durata de viata pe esantion
t.test(Battery$facilityA, alternative = "less")

#mu = diferenta Media populatiei
#t.test(x, y, mu=mu0, alternative = "two.sided"/"less"/"greater")

data(mtcars)
dataset=mtcars
attach(dataset)
?mtcars
names(mtcars)
tautomata=mpg[am==0]
tmanuala=mpg[am==1]

#Ho : muAutomat = muManual
#Ha : muAutomat > muManual
#(muAutomat - muManual > 0)
t.test(tautomata, tmanuala, mu=0, alternative = "greater")
t.test(tautomata, tmanuala, mu=0, alternative = "less") 
# => automatele sunt mult mai putin eficiente decat manualele

#Dieta nivelul de glucoza din sange
#Ce se va intampla in medie
#Media inainte e ca media dupa

#Ho muInainte = muDupa
#Ha muInainte > muDupa

#Vezi valorile in curs
inainte = c(200, 300, 124, 350)
dupa = c(121, 320, 150, 310)

t.test(inainte, dupa, mu=0, alternative = "greater", paired=T)
#t.test(inainte, dupa, mu=0, alternative = "less",paired=T)

#=>Dieta este eficienta

#Testul wilcox
grup1=c(7.5, 12.6, 20.2, 6.8, 403.3, 2.9, 7.2, 10.5, 205.4)
grup2=c(8.2, 13.3, 102.0, 12.7, 6.3, 4.8, 19.5, 8.3, 407.1, 10.4)
qqnorm(grup1)
#=> Grupul 1 nu are distributie normala
plot(density(grup1))

qqnorm(grup2)
plot(density(grup2))
wilcox.test(grup1, grup2, alternative = "two.sided", paired = F)

#Problema 2 lab
#Folosim t

#Problema 4 lab
#Ce test folosim: Esantioane dependente