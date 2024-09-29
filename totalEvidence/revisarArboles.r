library(ape)
library(phytools)
read.nexus("todosLosArboles.nex")
arbolesDasybasisEvTotal <- read.nexus("todosLosArboles.nex")
ape::dist.topo(unroot(arbolesDasybasisEvTotal))
plot(arbolesDasybasisEvTotal)

