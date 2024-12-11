install.packages("rpivotTable")
library(rpivotTable)
install.packages("readxl")
library(readxl)

R <- read_excel("problems_1.xlsx")
View(R)

R <- R[2:828,]

F <- data.frame(R$ID, R$AdmArea, R$Month, as.numeric(R$Year), as.numeric(R$TotalAmount))
colnames(F)<- c("ID", "AdmArea", "Month", "Year", "TotalAmount")
View(F)

D <- data.frame(F$AdmArea[(F$Year >= 2016) & (F$Year <= 2019)], 
                F$Year[(F$Year >= 2016) & (F$Year <= 2019)], 
                F$TotalAmount[(F$Year >= 2016) & (F$Year <= 2019)])
View(D)

G <- data.frame(R$Month[(R$Year == 2021)], 
                R$TotalAmount[(R$Year == 2021)])
View(G)


hist(D)
J <- density(D)
plot(J)

H <- data.frame(F[F$AdmArea == "Центральный административный округ", ])
View(H)

save(D, file = "2.RData")


