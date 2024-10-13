library(ape)
library(phytools)
#~ read.nexus("todosLosArboles.nex")

                                        #
arbolesDasybasisEvTotal <-  read.nexus("DasybasisAllK26.tre")



#arbolesDasybasisLM     <-  read.tree("finalDasybasisEvTotalAll.tre")

#arbolesDasybasisLM
                                        # arbolesDasybasisEvTotal[[1]]

arbolesDasybasisEvTotal

plot(arbolesDasybasisEvTotal)

ape::dist.topo(unroot(arbolesDasybasisEvTotal))


#ape::dist.topo(unroot(arbolesDasybasisEvTotal),unroot(arbolesDasybasisEvTotal))

#ape::dist.topo(unroot(arbolesDasybasisEvTotal),unroot(arbolesDasybasisLM))
#ape::dist.topo(unroot(arbolesRecortados),unroot(arbolesDasybasisLM))


#~ plot(arbolesDasybasisEvTotal)

