library(ape)
library(phytools)
#~ read.nexus("todosLosArboles.nex")

pdf("Phylogenies_Dasybasis_2024-10-18.pdf", paper="special",
    width = 15,
    height = 30)


options(width = 500)
                                        #
arbolesDasybasisEvTotal <-  read.nexus("DasybasisAllK26.tre")


names(arbolesDasybasisEvTotal)

for (arbol1 in 1:2){

    for (arbol2 in arbol1:3){


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

for (topologia in 1:3){

plot(arbolesDasybasisEvTotal[[topologia]], main=names(arbolesDasybasisEvTotal)[topologia],font = 2, cex = 2.3, label.offset = 1,
     no.margin = TRUE)

}

plot(consensus(arbolesDasybasisEvTotal[1:3]))

plot(consensus(arbolesDasybasisEvTotal[2:3]))
