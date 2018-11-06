install.packages("UsingR")
library("UsingR")
summary("cabinet")
UsingR::cabinet
median("est.tax.savings")
sort(UsingR::cabinet[, "est.tax.savings"], decreasing = T)
median(UsingR::cabinet[, "est.tax.savings"])
mean(UsingR::cabinet[, "est.tax.savings"])
table <- UsingR::cabinet
table[order(table[,"est.tax.savings"],decreasing = T), ]

tableSec <-UsingR::npdb
tableSec[order(tableSec[, "amount"],decreasing = T), ]
median(UsingR::npdb[, "amount"])
mean(UsingR::npdb[, "amount"])
attach(npdb)
tableSec("year")
