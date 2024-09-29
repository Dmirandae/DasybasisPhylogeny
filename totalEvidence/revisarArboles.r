library(ape)
library(phytools)
#~ read.nexus("todosLosArboles.nex")
arbolesDasybasisEvTotal <-  read.nexus("todosLosArboles.nex")
arbolesDasybasisLM     <-  read.nexus("piwe2LM-compacto-ContraTabanus.nex")
ape::dist.topo(unroot(arbolesDasybasisEvTotal))
ape::dist.topo(unroot(arbolesDasybasisEvTotal),unroot(arbolesDasybasisLM))


#~ plot(arbolesDasybasisEvTotal)

