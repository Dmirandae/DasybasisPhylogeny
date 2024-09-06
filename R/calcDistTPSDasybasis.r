library(geomorph)

packageVersion("geomorph")

## in house functions

EuclidDistPP <- function (EDpuntox,EDpuntoy) { sqrt((EDpuntox[1]-EDpuntoy[1])^2+(EDpuntox[2]-EDpuntoy[2])^2) }


pdf("Dasybasis.pdf", paper="special",width = 35, height = 20)

## get a rps file and write it scaled with id

getwd()

rutaDatos <- "/home/rafael/proyectosDRME/tabanos/Dasybasis/2024/landmarks/2024/completos/"


archivosTps <- list.files(path=rutaDatos,"tps")

archivosTps

#input_file <-  paste(rutaDatos,archivosTps[3],sep="")

#output_file <- paste(rutaDatos,"mod",archivosTps[1],sep="")

DasybasisLM <- readmulti.tps(
  paste0(rutaDatos,"/",archivosTps,sep=""),
  readcurves = FALSE,specID = "ID")
# b <- readland.tps(input_file,readcurves = FALSE,specID = "ID")



v1 <-  DasybasisLM[,,1][,1]

v2 <- DasybasisLM[,,1][,2]

v1
v2

v1[is.na(v1)] <- "?" 
v2[is.na(v1)] <- "?" 


cat("\n",dimnames(DasybasisLM)[[3]][numEspecie]," ")


for (contador in 1:length(v1)){

  cat(v1[contador],v2[contador],sep=",")
  cat (" ")

}


## landmarks, 1,2 , species



### otras cosas
length(DasybasisLM[2,,])

###writeland.tps(DasybasisLM,"teest.tps")


getNA <- function (x,y) any(is.na(y[x,,]) )

lM <- c(1:30)

lM

quitar <- which(unlist(lapply(lM,getNA,y=DasybasisLM)))

quitar

shortDasybasis <- DasybasisLM[-c(quitar),,]


getTheID <- function(TPSobject) {attr(TPSobject, "dimnames")[[3]]}


getTheID(DasybasisLM)
getTheID(shortDasybasis)





####
##writeland.tps(DasybasisLM,"todoDasybasis.nts",specID = TRUE)

#?gpagen

## quizas no asi, dado que la falta dle lm pouede ser una caracteristica


#?estimate.missing

DasybasisTPS <- estimate.missing(DasybasisLM,method = "TPS")

DasybasisREG <- estimate.missing(DasybasisLM,method = "Reg")

### TPS


CamaUnica <- gpagen(DasybasisTPS,Parallel = T)

plot(CamaUnica$coords)

plot(CamaUnica)

CamaUnicaR <- gpagen(DasybasisREG,Parallel = T, Proj = T)

shortCamaUnica  <- gpagen(shortDasybasis,Parallel = F, Proj = TRUE, ProcD = TRUE)

##
?gpagen

shortCamaUnica$points.var


plot(CamaUnica)

DasybasyisPCA <- gm.prcomp(CamaUnica$coords)

DasybasyisPCAR <- gm.prcomp(CamaUnicaR$coords)

shortDasybasyisPCA <- gm.prcomp(shortCamaUnica$coords)


##?gm.prcomp

summary(DasybasyisPCA)
summary(shortDasybasyisPCA)


#par(mfrow = c(3, 1))

plot(DasybasyisPCA)

plot(DasybasyisPCAR)

plot(shortDasybasyisPCA)



tail(shortCamaUnica$coords[1,,],n=2)

tail(shortCamaUnica$coords[1,1,],n=4)

#"## extraer landmark uno a uno"


shortCamaUnica$consensus

terminales <-  dim(shortCamaUnica$coords[,,])[1]

for( sp in 1:terminales){

  a <- data.matrix(shortCamaUnica$coords[1,,])

  a
a <- as.data.frame(unlist(a))

##as.data.frame(a)

length(a)

a2 <- (dist(t(a)))

if (sp == 1){distancia <- a2}else{   
## sumar las dos matrices de distancia
distancia <- distancia + a2}
                              
}                              



clusterDasybasis <- hclust(distancia)


clusDendro <- as.dendrogram(as.hclust(clusterDasybasis))                             

#?as.hclust

#par(mfrow = c(1,1))


plot(clusDendro,horiz=T,axes=T, ylab= "Height", cex.axis=1.3,cex.lab=1.2)


