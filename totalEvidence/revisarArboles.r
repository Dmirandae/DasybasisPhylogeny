library(ape)
library(phytools)
#~ read.nexus("todosLosArboles.nex")

options(width = 500)
                                        #
arbolesDasybasisEvTotal <-  read.nexus("DasybasisAllK26.tre")


names( arbolesDasybasisEvTotal)


##dev.off()
pdf("Phylogenies_Dasybasis_2024-10-13.pdf", paper="special",
    width = 40,
    height = 30)

ape::dist.topo(unroot(arbolesDasybasisEvTotal))

for (topologia in 1:6){

plot(arbolesDasybasisEvTotal[[topologia]], main=names(arbolesDasybasisEvTotal)[topologia],font = 2, cex = 2.3, label.offset = 1,
     no.margin = TRUE)

}
#?plot.phylo
    

for (topologia in 2:6){


obj<-cophylo(arbolesDasybasisEvTotal[[1]],arbolesDasybasisEvTotal[[topologia]])

plot(obj,type=c("cladogram","cladogram"),fsize=0.9,part=0.2,pts=FALSE,
     lwd=2,link.type="curved")
mtext("a) Classical morphology.",at=-10,adj=0)
mtext("b) Totla evidence.",at=10,adj=0)
#mtext("a) Classical morphology.",at=-0.5,adj=0)
#mtext("b) Totla evidence.",at=0.02,adj=0)

#     mar=c(0.1,0.1,2.1,0.1))

}
