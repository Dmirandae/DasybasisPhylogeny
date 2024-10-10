DasybasisPiwe <- read.csv("bestPiweValueTable.csv",header=T, sep=";")
DasybasisPiwe[which.max(DasybasisPiwe$supported),]
DasybasisPiwe[which.max(DasybasisPiwe$compatible),]
DasybasisPiwe[which.max(DasybasisPiwe$Nsupported),]
DasybasisPiwe[which.max(DasybasisPiwe$Ncompatible),]
DasybasisPiwe[which.max(DasybasisPiwe$MaxAverDist),]
DasybasisPiwe[which.max(DasybasisPiwe$MinAverDist),]
