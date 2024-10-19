library(ape)
library(phytools)
#~ read.nexus("todosLosArboles.nex")

options(width = 500)
                                        #
arbolesDasybasisEvTotal <-  read.nexus("DasybasisAllK26.tre")


names(arbolesDasybasisEvTotal)


par(mfrow = c(1, 2)) 
plot.phylo(arbolesDasybasisEvTotal[[1]])
plot.phylo(arbolesDasybasisEvTotal[[5]])

obj<-cophylo(arbolesDasybasisEvTotal[[3]],arbolesDasybasisEvTotal[[4]])

obj<-cophylo(arbolesDasybasisEvTotal[[3]],
             consensus(arbolesDasybasisEvTotal[[3]],arbolesDasybasisEvTotal[[4]]))


p

par(mfrow = c(1, 1)) 

plot(obj,type=c("cladogram","phylogram"),
     fsize=0.9,part=0.2,pts=FALSE,
     lwd=2,link.type="curved")

21

##dev.off()
pdf("Phylogenies_Dasybasis_2024-10-13.pdf", paper="special",
    width = 15,
    height = 30)

ape::dist.topo(unroot(arbolesDasybasisEvTotal))

for (topologia in 1:2){

plot(arbolesDasybasisEvTotal[[topologia]], main=names(arbolesDasybasisEvTotal)[topologia],font = 2, cex = 2.3, label.offset = 1,
     no.margin = TRUE)

}
#?plot.phylo
    

#~ for (topologia in 1:2){


                                        #~ obj<-cophylo(arbolesDasybasisEvTotal[[1]],arbolesDasybasisEvTotal[[topologia]])

                                        #~ plot(obj,type=c("cladogram","cladogram"),fsize=0.9,part=0.2,pts=FALSE,
                                        #~      lwd=2,link.type="curved")
#~ mtext("a) Classical morphology.",at=-10,adj=0)
mtext("b) Totla evidence.",at=10,adj=0)
#mtext("a) Classical morphology.",at=-0.5,adj=0)
#mtext("b) Totla evidence.",at=0.02,adj=0)

#     mar=c(0.1,0.1,2.1,0.1))

#~ }
