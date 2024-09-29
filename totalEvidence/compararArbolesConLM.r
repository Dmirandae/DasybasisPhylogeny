read.csv("outlm")
read.csv("outlm",header=F)
lm <- read.csv("outlm",header=F)
Morph <- read.csv("outM",header=F)
ls()
lm %in% Morph
lm == Morph
lm
Morph
lm %in% Morph
sort(lm)
lm
lm$V1
lm$V1 %in% Morph$V1
length(lm)
lm$V1[!
!(lm$V1 %in% Morph$V1)
lm$V1[!(lm$V1 %in% Morph$V1)]
q()
library(ape)
library(phytools)
read.nexus("todosLosArboles")
read.tree("todosLosArboles")
arbolesDasybasisEvTotal <- read.tree("todosLosArboles")
?ape::dist.topo
ape::dist.topo(arbolesDasybasisEvTotal)
ape::dist.topo(unroot(arbolesDasybasisEvTotal))
plot(arbolesDasybasisEvTotale)
plot(arbolesDasybasisEvTotales)
plot(arbolesDasybasisEvTotal)
q()
library(ape)
library(phytools)
read.nexus("todosLosArboles.nex")
arbolesDasybasisEvTotal <- read.nexus("todosLosArboles.nex")
ape::dist.topo(unroot(arbolesDasybasisEvTotal))
arbolesDasybasisEvTotal <- read.nexus("todosLosArboles.nex")
ape::dist.topo(unroot(arbolesDasybasisEvTotal))
?ape::dist.topo(unroot(arbolesDasybasisEvTotal))
ape::dist.topo(unroot(arbolesDasybasisEvTotal))
savehistory("revisarArboles.r")
q()
library(ape)
library(phytools)
<quit()
quit()
library(ape)
library(phytools)

read.nexus("todosLosArboles2.nex")

read.tree("todosLosArboles2.nex")

read.tree("todosLosArboles.nex")

read.nexus("todosLosArboles.nex")

cd '/home/rafael/disco2/proyectosDRME/tabanos/Dasybasis/2024/landmarks/2024/completos'
cd '/home/rafael/disco2/proyectosDRME/tabanos/Dasybasis/2024/landmarks/2024/completos'
cd '/home/rafael/disco2/proyectosDRME/tabanos/Dasybasis/2024/landmarks/2024/completos'
library(ape)
library(phytools)
#~ read.nexus("todosLosArboles.nex")
arbolesDasybasisEvTotal <-  read.nexus("todosLosArboles.nex")
arbolesDasybasisLM     <-  read.nexus("piwe2LM-compacto-ContraTabanus.tre")
ape::dist.topo(unroot(arbolesDasybasisEvTotal))

cd '/home/rafael/disco2/proyectosDRME/tabanos/Dasybasis/2024/landmarks/2024/completos'
library(ape)
library(phytools)

arbolesDasybasisEvTotal <-  read.nexus("todosLosArboles.nex")

arbolesDasybasisLM     <-  read.nexus("piwe2LM-compacto-ContraTabanus.tre")
cd '/home/rafael/disco2/proyectosDRME/tabanos/Dasybasis/2024/landmarks/2024/completos'
arbolesDasybasisLM     <-  read.nexus("piwe2LM-compacto-ContraTabanus.nex")
arbolesDasybasisLM     <-  read.tree("piwe2LM-compacto-ContraTabanus.nex")
plot(arbolesDasybasisLM)
dev.off()
ls()
arbolesDasybasisLM     <-  read.nexus("piwe2LM-compacto-ContraTabanus.nex")
plot(arbolesDasybasisLM)
dev.off()
ape::dist.topo(unroot(arbolesDasybasisEvTotal))
ape::dist.topo(unroot(arbolesDasybasisEvTotal,arbolesDasybasisLM))
ape::dist.topo(unroot(arbolesDasybasisEvTotal),unroot(arbolesDasybasisLM))
ls()
arbolesDasybasisEvTotal[[1]]
arbolesDasybasisEvTotal[[1]]$tip.label
ls()
arbolesDasybasisLM[[1]]$tip.label
arbolesDasybasisLM$tip.label
arbolesDasybasisLM$tip.label %in% arbolesDasybasisEvTotal[[1]]$tip.label
arbolesDasybasisEvTotal[[1]]$tip.label %in% arbolesDasybasisLM$tip.label
arbolesDasybasisLM$tip.label == arbolesDasybasisEvTotal[[1]]$tip.label
arbolesDasybasisEvTotal[[1]]$tip.label %in% arbolesDasybasisLM$tip.label
!(arbolesDasybasisEvTotal[[1]]$tip.label %in% arbolesDasybasisLM$tip.label)
arbolesDasybasisEvTotal[[1]]$tip.label %in% arbolesDasybasisLM$tip.label
todasSp <- arbolesDasybasisEvTotal[[1]]$tip.label 
lmSp <-  arbolesDasybasisLM$tip.label
todasSp %in% lmSp
todasSp[todasSp %in% lmSp]
todasSp[!(todasSp %in% lmSp)]
aSacar <- todasSp[!(todasSp %in% lmSp)]
aSacar
?drop.tip
drop.tip(arbolesDasybasisEvTotal[[1]],aSacar)
drop.tip(arbolesDasybasisEvTotal[[1]],aSacar)$tip.label
aSacar %in% drop.tip(arbolesDasybasisEvTotal[[1]],aSacar)$tip.label 
drop.tip(arbolesDasybasisEvTotal[[1]],aSacar)
sacarTerminal <- function (x){ drop.tip(arbolesDasybasisEvTotal[[x]],aSacar)}
arbolesDasybasisEvTotal
length(arbolesDasybasisEvTotal)
numArboles <- length(arbolesDasybasisEvTotal)
lapply(numArboles,sacarTerminal)
arbolesRecortados <- lapply(numArboles,sacarTerminal)
ape::dist.topo(unroot(arbolesRecortados),unroot(arbolesDasybasisLM))

arbolesRecortados
sacarTerminal2 <- function (x){ drop.tip(x,aSacar)}
sacarTerminal2(arbolesDasybasisEvTotal)
arbolesRecortados2 <- sacarTerminal2(arbolesDasybasisEvTotal)
ape::dist.topo(unroot(arbolesRecortados2),unroot(arbolesDasybasisLM))

savehistory("compararArbolesConLM.r")
?rf
?di2multi
ape::dist.topo(unroot(arbolesRecortados2),unroot(arbolesDasybasisLM))

di2multi(arbolesDasybasisLM)
di2multi(arbolesDasybasisLM,1)
di2multi(arbolesDasybasisLM)
arbolesDasybasisLM$edge
arbolesDasybasisLM$edge[,1]
arbolesDasybasisLM$edge[,2]
arbolesDasybasisLM$edge[,2]
arbolesDasybasisLM$edge[,1]
a1 <- arbolesDasybasisLM
a1$edge
a1$edge[,1]
a1$edge[,2]
a1$edge[,1]
a1$edge[,2] 
a1$Nnode
a1$Nnode == 1
a1$Nnode = 1
plot(a1)
a1 <- arbolesDasybasisLM
getwd()
read.nexus("t0")
read.nexus("t0")
read.tree("t0")
vacio <- read.tree("t0")
plot(vacio)
dev.off()
ape::dist.topo(unroot(arbolesRecortados2),unroot(vacio))

vacio$Nnode
vacio$edge
vacio$tip.label
ls()
vacio$tip.label %in% aSacar
?dist.topo
ape::dist.topo(unroot(arbolesRecortados2),unroot(arbolesDasybasisLM))

arbolesRecortados2[[1]]$Nnode
arbolesRecortados2[[2]]$Nnode
arbolesRecortados2[[3]]$Nnode
arbolesRecortados2[[4]]$Nnode
arbolesRecortados2[[5]]$Nnode
ape::dist.topo(unroot(arbolesRecortados2),unroot(arbolesDasybasisLM))

ape::dist.topo(unroot(arbolesRecortados2),unroot(arbolesDasybasisLM))

arbolesDasybasisLM$Nnode
58+58
ape::dist.topo(unroot(arbolesRecortados2),unroot(arbolesDasybasisLM))/116

## Los arboples no se parecen en nada
savehistory("compararArbolesConLM.r")
