head(read.csv("leer"))
head(read.csv("leer", sep=";"))
head(read.csv("leer", sep=";"))
DasybasisPiwe <- read.csv("leer", sep=";")
cor(DasybasisPiwe)
cor(DasybasisPiwe$support,DasybasisPiwe$comp)
is.numeric(DasybasisPiwe)
DasybasisPiwe <- read.csv("leer", sep=";",stringsAsFactors=F)
cor(DasybasisPiwe$support,DasybasisPiwe$comp)
is.numeric(DasybasisPiwe)
is.numeric(DasybasisPiwe$k)
is.numeric(DasybasisPiwe$support)
is.numeric(DasybasisPiwe$supportN)
is.numeric(DasybasisPiwe$comp)
DasybasisPiwe$comp
DasybasisPiwe <- read.csv("leer", sep=";",stringsAsFactors=F)
is.numeric(DasybasisPiwe$comp)
DasybasisPiwe$comp
DasybasisPiwe$support
cor(DasybasisPiwe$support,DasybasisPiwe$comp)
cor(DasybasisPiwe$support,DasybasisPiwe$supportN)
cor(DasybasisPiwe$compN,DasybasisPiwe$comp)
hist(DasybasisPiwe$support)
plot(DasybasisPiwe$supportN)
max(DasybasisPiwe$supportN)
max(DasybasisPiwe$support)
plot(DasybasisPiwe$support,DasybasisPiwe$comp)
max(DasybasisPiwe$support)
max(DasybasisPiwe$supportN)
plot(DasybasisPiwe$supportN,DasybasisPiwe$compN)
DasybasisPiwe <- read.csv("leer", sep=";",stringsAsFactors=F)
plot(DasybasisPiwe$supportN,DasybasisPiwe$compN)
max(DasybasisPiwe$supportN)
max(DasybasisPiwe$support)
cor(DasybasisPiwe$compN,DasybasisPiwe$comp)
cor(DasybasisPiwe$support,DasybasisPiwe$supportN)
which.max(DasybasisPiwe$support)
which.max(DasybasisPiwe$supportN)
which.max(DasybasisPiwe$comp)
which.max(DasybasisPiwe$compN)
which.max(DasybasisPiwe$compN)
which.max(DasybasisPiwe$averageMin)
which.max(DasybasisPiwe$averageMax)
DasybasisPiwe <- read.csv("leer", sep=";",stringsAsFactors=F)
which.max(DasybasisPiwe$averageMax)
which.max(DasybasisPiwe$compN)
which.max(DasybasisPiwe$comp)
cor(DasybasisPiwe$support,DasybasisPiwe$supportN)
plot(DasybasisPiwe$supportN,DasybasisPiwe$compN)
plot(DasybasisPiwe$support,DasybasisPiwe$comp)
plot(DasybasisPiwe$supportN,DasybasisPiwe$compN)
hist(DasybasisPiwe$supportN)
hist(DasybasisPiwe$supportN,breaks=30)
hist(DasybasisPiwe$supportN,breaks=40)
hist(DasybasisPiwe$supportN,breaks=30)
hist(DasybasisPiwe$supportN,breaks=20)
hist(DasybasisPiwe$supportN,breaks=10)
plot(DasybasisPiwe$support,DasybasisPiwe$comp)
plot(DasybasisPiwe$supportN,DasybasisPiwe$comp)
plot(DasybasisPiwe$supportN,DasybasisPiwe$compN)
which.max(DasybasisPiwe$comp)
which.max(DasybasisPiwe$compN)
which.max(DasybasisPiwe$support)
which.max(DasybasisPiwe$supportN)
DasybasisPiwe$k[which.max(DasybasisPiwe$supportN)]
DasybasisPiwe$k[which.max(DasybasisPiwe$support)]
DasybasisPiwe$k[which.max(DasybasisPiwe$comp)]
DasybasisPiwe$k[which.max(DasybasisPiwe$compN)]
savehistory("chechDasybasisPiwe.r")
q()
savehistory("chechDasybasisPiwe.r")