library(geomorph)

packageVersion("geomorph")

## get a rps file and write it scaled with id

getwd()

rutaDatos <- "/home/rafael/proyectosDRME/tabanos/Dasybasis/2024/landmarks/2024/Alas-Dasybasis"


archivosTps <- list.files(path=rutaDatos,"tps")

archivosTps

#input_file <-  paste(rutaDatos,archivosTps[3],sep="")

#output_file <- paste(rutaDatos,"mod",archivosTps[1],sep="")

DasybasisLM <- readmulti.tps(
  paste0(rutaDatos,"/",archivosTps,sep=""),
  readcurves = FALSE,specID = "ID")
# b <- readland.tps(input_file,readcurves = FALSE,specID = "ID")



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

shortCamaUnica  <- gpagen(shortDasybasis,Parallel = T)

##?gm.prcomp

DasybasyisPCA <- gm.prcomp(CamaUnica$coords)

shortDasybasyisPCA <- gm.prcomp(shortCamaUnica$coords)

summary(DasybasyisPCA)
summary(shortDasybasyisPCA)


par(mfrow = c(1, 2))

plot(DasybasyisPCA)
plot(shortDasybasyisPCA)



tail(shortCamaUnica$coords[1,,],n=2)
tail(shortCamaUnica$coords[1,1,],n=4)

#"## extraer landmark uno a uno"

a <- data.matrix(shortCamaUnica$coords[2,,])

a

unlist(a)

a <- as.data.frame(unlist(a))

##as.data.frame(a)

length(a)

a2 <- (dist(t(a)))

## sumar las dos matrices de distancia

a1
a2

a1 + a2

## via suma y con for

xx

#distancia <- dist(shortCamaUnica$coords)

## nop thios is not right
#d2 <- data.frame(shortDasybasis)

#str(d2)

#length(d2[1,])

#d2[,1]
                                        #~ print(distancia)

clusterDasybasis <- hclust(distancia)


print(clusterDasybasis)

clusDendro <- as.dendrogram(as.hclust(clusterDasybasis))                             


par(mfrow = c(1,1))


plot(clusDendro,horiz=F,axes=T, ylab= "Height", cex.axis=1.3,cex.lab=1.7)


### Reg

#CamaUnica <- gpagen(DasybasisREG,Parallel = T)

##?gm.prcomp

#DasybasyisPCA <- gm.prcomp(CamaUnica$coords)

#summary(DasybasyisPCA)

#plot(DasybasyisPCA)






#dist(shortDasybasyisPCA$A)


