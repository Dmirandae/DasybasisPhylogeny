library(ape)
library(phytools)
#~ read.nexus("todosLosArboles.nex")

pdf("Phylogenies_Dasybasis_2024-10-19.pdf", paper="special",
    width = 15,
    height = 30)


options(width = 500)
                                        #
#~ arbolesDasybasisEvTotal <-  read.nexus("DasybasisAllK26.tre")
arbolesDasybasisEvTotal <-  read.nexus("figurasPaper.tre")


names(arbolesDasybasisEvTotal)

for (arbol1 in 1:2){

    for (arbol2 in arbol1:2){


par(mfrow = c(1, 2)) 
plot.phylo(arbolesDasybasisEvTotal[[arbol1]])
plot.phylo(arbolesDasybasisEvTotal[[arbol2]])

obj<-cophylo(arbolesDasybasisEvTotal[[arbol1]],arbolesDasybasisEvTotal[[arbol2]])

par(mfrow = c(1, 1)) 

plot(obj,type=c("cladogram","phylogram"),
     fsize=0.9,part=0.2,pts=FALSE,
     lwd=2,link.type="curved")


    }
}





##dev.off()

ape::dist.topo(unroot(arbolesDasybasisEvTotal))

for (topologia in 1:2){

plot(arbolesDasybasisEvTotal[[topologia]], main=names(arbolesDasybasisEvTotal)[topologia],
     font = 2, cex = 2.3, label.offset = 1,
     no.margin = TRUE)

}

plot(root(consensus(arbolesDasybasisEvTotal[1:2]),"Tabanus_importunus"),main="Consensus all",
     font = 2.5, cex = 2.3, label.offset = 1,
     no.margin = TRUE)

#~ plot(root(consensus(arbolesDasybasisEvTotal[1:2]),"Tabanus"),main="Consensus LM",
#~      font = 3, cex = 2.3, label.offset = 1,
#~      no.margin = TRUE)
