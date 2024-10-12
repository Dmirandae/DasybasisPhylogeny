library(ape)
library(phytools)
#~ read.nexus("todosLosArboles.nex")

arbolesDasybasisEvTotal <-  read.nexus("tmp1.tre")
#arbolesDasybasisLM     <-  read.nexus("piwe2LM-compacto-ContraTabanus.nex")
# arbolesDasybasisEvTotal[[1]]

plot(arbolesDasybasisEvTotal)

ape::dist.topo(unroot(arbolesDasybasisEvTotal),unroot(arbolesDasybasisEvTotal))

                                        #ape::dist.topo(unroot(arbolesDasybasisEvTotal),unroot(arbolesDasybasisLM))
#ape::dist.topo(unroot(arbolesRecortados),unroot(arbolesDasybasisLM))


#~ plot(arbolesDasybasisEvTotal)

