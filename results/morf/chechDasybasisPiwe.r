DasybasisPiwe <- read.csv("leer", sep=";",stringsAsFactors=F)

plot(DasybasisPiwe$support,DasybasisPiwe$comp)

plot(DasybasisPiwe$supportN,DasybasisPiwe$compN)

plot(DasybasisPiwe$k,DasybasisPiwe$support)

plot(DasybasisPiwe$k,DasybasisPiwe$supportN)

plot(DasybasisPiwe$k,DasybasisPiwe$comp)

plot(DasybasisPiwe$k,DasybasisPiwe$compN)


DasybasisPiwe$k[which.max(DasybasisPiwe$supportN)]
DasybasisPiwe$k[which.max(DasybasisPiwe$support)]
DasybasisPiwe$k[which.max(DasybasisPiwe$comp)]
DasybasisPiwe$k[which.max(DasybasisPiwe$compN)]
