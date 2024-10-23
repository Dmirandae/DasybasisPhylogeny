#### compare trees
library(ape)


## arboles de referencia

arboles1 <- read.nexus("finalTrees-Das-2024-10-18.tre")

## la copmparadera

for( numero in 0:70){

arbolPiwe <- read.tree(paste("arbolPiwe",numero,".tree",sep=""))

cat(numero,mean(dist.topo(unroot(arboles1), unroot(arbolPiwe))),"\n")

}

#~ read.tree("arbolPiwe0.tree")
#~ arbolPiwe <- read.tree("arbolPiwe0.tree")
#~ rf(arboles1, arbolPiwe)
#~ ?rf
#~ ?dist.topo
#~ dist.topo(arboles1, arbolPiwe)
#~ dist.topo(unroot(arboles1), unroot(arbolPiwe))
#~ arbolPiwe
#~ arbolPiwe[[1]]
#~ quit()
#~ library(ape)
#~ arboles1 <- read.nexus("finalTrees-Das-2024-10-18.tre")
#~ arbolPiwe <- read.tree("arbolPiwe0.tree")
#~ dist.topo(unroot(arboles1), unroot(arbolPiwe))
#~ mean(dist.topo(unroot(arboles1), unroot(arbolPiwe)))

#~ numero <- 0
#~ cat(numero,mean(dist.topo(unroot(arboles1), unroot(arbolPiwe))),"\n")
#~ arbolPiwe <- read.tree(paste("arbolPiwe",numero,".tree",sep=""))
#~ numero <- 1

#~ cat(numero,mean(dist.topo(unroot(arboles1), unroot(arbolPiwe))),"\n")
#~ savehistory("compararArbolesBestK.r")

