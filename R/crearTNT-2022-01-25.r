?hclust
q()
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
setwd("../landmarks/")
archivos <- list.files(pattern="tps")
## http://blog.phytools.org/2013/01/processing-tps-morphometric-files-in-r.html
## library(phytools)
#~ ?readland.tps
morphoDasybasis <- readmulti.tps(archivos,specID = "ID")
morphoDasybasisEst  <- estimate.missing(morphoDasybasis,method="Reg")
## GPA 
diosGriegoDasybasis <- gpagen(morphoDasybasisEst)
morphoDasybasisEst  <- estimate.missing(morphoDasybasis,method="Reg")
morphoDasybasis <- readmulti.tps(archivos,specID = "ID")
getwd()
archivos <- list.files(pattern="tps")
archivos
library(colorspace)  ##
library(cluster)     ## Load 'cluster' package v. 1.15.2 ---- http://cran.r-project.org/web/packages/cluster/index.html
##library(DiscriMiner) ## Load 'Discriminer' package v. 0.1-29 ---- http://cran.r-project.org/web/packages/DiscriMiner/index.html
##library(ellipse)     ## Load 'ellipse' package v. 0.3-8 ---- http://cran.r-project.org/web/packages/ellipse/index.html
library(geomorph)    ## Load 'geomorph' package v. 2.1.1 ---  http://cran.r-project.org/web/packages/geomorph/index.html
library(ggplot2)     ## Load 'ggplot2' package v. 1.0.0 ---- http://cran.r-project.org/web/packages/ggplot2/index.html
library(mclust)      ## Load 'mclust' package v. 4.3 ---- http://cran.r-project.org/web/packages/mclust/index.html
##library(shapes)      ## Load 'shapes' package v. 1.1-9 --- http://cran.r-project.org/web/packages/shapes/index.html
library(vegan)       ## Load 'vegan' package v. 2.0-10 ---- http://cran.r-project.org/web/packages/vegan/index.html
morphoDasybasis <- readmulti.tps(archivos,specID = "ID")
archivos <- list.files(pattern="tps")
morphoDasybasis <- readmulti.tps(archivos,specID = "ID")
morphoDasybasisEst  <- estimate.missing(morphoDasybasis,method="Reg")
## GPA 
diosGriegoDasybasis <- gpagen(morphoDasybasisEst)
str(diosGriegoDasybasis)
datos1 <- diosGriegoDasybasis$coords[,,1]
a <- (diosGriegoDasybasis$coords[1,,])
b <- (diosGriegoDasybasis$coords[2,,])
## ojo con la notacion vientifica aqui mejor redondear a algo como 6 cifras
redondeado <- round(diosGriegoDasybasis$coords,6)
redondeado
ftable(redondeado)
head(ftable(redondeado))
as.matrix(ftable(redondeado))
morfoMatrix <- as.matrix(ftable(redondeado))
names(morfoMatrix)
str(morfoMatrix)
colnames(morfoMatrix)

names(ftable(redondeado))
str(ftable(redondeado))
a <- ftable(redondeado)
str(a)
colnames(diosGriegoDasybasis)
str(diosGriegoDasybasis)
str(diosGriegoDasybasis$coords)
ftable(diosGriegoDasybasis)
ls()
redondeado
str(redondeado)
archivos <- list.files(pattern="tps")
archivos
archivos <- list.files(pattern="tps")
archivos
morphoDasybasis <- readmulti.tps(archivos,specID = "ID")
morphoDasybasisEst  <- estimate.missing(morphoDasybasis,method="Reg")
## GPA 
diosGriegoDasybasis <- gpagen(morphoDasybasisEst)
redondeado <- round(diosGriegoDasybasis$coords,6)
a <- ftable(redondeado)
names(a)
str(a)
as.matrix(a)
b <- as.matrix(a)
str(b)
names(b)
head(a)
names(a)
colnames(a)
a
tail(a)
str(a)
a[,,1]
a[,,]
a[,]
a[1,]
a[1,1]
b[1,1]
str(b)
names(b)
colnames(b)
b
head(b)
  species <- colnames(b)
species
b
b[1,]
b[2,]
b[3,]
b[,1]
b[,c(1,2)]
b[,1]
b[,2]
b[,c(1,2)]
apply(b[,c(1,2)],1,mean)
## para la media de las entradas 1 y 2 apply(b[,c(1,2)],1,mean)
apply(b[,c(1,2)],1,mean)
species[c(1,2)]
species[1]
?split(species[1]
)
split(species[1],"_")
?split(species[1])
strsplit(species[1],"_")
strsplit(species[1],"_")[1]
strsplit(species[1],"_")[[1]]
strsplit(species[1],"_")[[1]][1]
strsplit(species[1],"_")[1][1]
strsplit(species[1],"_")[[1]][1]
sacar <- function(c){strsplit(species[x],"_")[[1]][1]}
length(species)
contar <- 1:length(species)
lapply(contar,sacar)
contar
sacar <- function(x){strsplit(species[x],"_")[[1]][1]}
lapply(contar,sacar)
?savehistory
savehistory("crearTNT-2022-01-25.r")
