## bibliotecas
## 1. LOAD PACKAGES AND FUNCTIONS TO THE ANALYSIS
library(colorspace)  ##
library(cluster)     ## Load 'cluster' package v. 1.15.2 ---- http://cran.r-project.org/web/packages/cluster/index.html
##library(DiscriMiner) ## Load 'Discriminer' package v. 0.1-29 ---- http://cran.r-project.org/web/packages/DiscriMiner/index.html
##library(ellipse)     ## Load 'ellipse' package v. 0.3-8 ---- http://cran.r-project.org/web/packages/ellipse/index.html
library(geomorph)    ## Load 'geomorph' package v. 2.1.1 ---  http://cran.r-project.org/web/packages/geomorph/index.html
library(ggplot2)     ## Load 'ggplot2' package v. 1.0.0 ---- http://cran.r-project.org/web/packages/ggplot2/index.html
library(mclust)      ## Load 'mclust' package v. 4.3 ---- http://cran.r-project.org/web/packages/mclust/index.html
##library(shapes)      ## Load 'shapes' package v. 1.1-9 --- http://cran.r-project.org/web/packages/shapes/index.html
library(vegan)       ## Load 'vegan' package v. 2.0-10 ---- http://cran.r-project.org/web/packages/vegan/index.html
source("colLab.R")   ## Load "colLab" function, modified by us to coloring edgePar and labels of a dendrogram ---- https://stat.ethz.ch/R-manual/R-patched/library/stats/html/dendrapply.html 
                     ## and http://stackoverflow.com/
## lista archivos
setwd("../landmarks/")
archivos <- list.files(pattern="tps")
## http://blog.phytools.org/2013/01/processing-tps-morphometric-files-in-r.html
## library(phytools)
#~ ?readland.tps
morphoDasybasis <- readmulti.tps(archivos,specID = "ID")
lables <- read.csv("labels",header=FALSE)
#~ names(morphoDasybasis[1,1,]) <- lables$V1
#head(lables)
#names(morphoDasybasis[1,1,])
#~ head(morphoDasybasis)
## analisis 0 
## 0.1 datos faltantes
morphoDasybasisEst  <- estimate.missing(morphoDasybasis,method="Reg")
## GPA 
diosGriegoDasybasis <- gpagen(morphoDasybasisEst)

str(diosGriegoDasybasis)



datos1 <- diosGriegoDasybasis$coords[,,1]

a <- (diosGriegoDasybasis$coords[1,,])

b <- (diosGriegoDasybasis$coords[2,,])

## ojo con la notacion vientifica aqui mejor redondear a algo como 6 cifras
redondeado <- round(diosGriegoDasybasis$coords,6)
writeland.tps(redondeado,"test6cifras.tps")

