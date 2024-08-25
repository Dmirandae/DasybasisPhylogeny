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

shortDasybasis <- DasybasisLM[-c(29,30),,]

shortDasybasis[29,,]

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

shortCamaUnica  <- gpagen(DasybasisTPS,Parallel = T)

##?gm.prcomp

DasybasyisPCA <- gm.prcomp(CamaUnica$coords)

shortDasybasyisPCA <- gm.prcomp(shortCamaUnica$coords)

summary(DasybasyisPCA)
summary(shortDasybasyisPCA)


par(mfrow = c(1, 2))

plot(DasybasyisPCA)
plot(shortDasybasyisPCA)


### Reg

CamaUnica <- gpagen(DasybasisREG,Parallel = T)

##?gm.prcomp

DasybasyisPCA <- gm.prcomp(CamaUnica$coords)

summary(DasybasyisPCA)

plot(DasybasyisPCA)






dist(DasybasyisPCA$A)



##### coords??? 
                                        # Extract Procrustes coordinates
coords <- gpa$coords

                                        # Choose a distance metric
dist_matrix <- dist(coords, method = "euclidean")  # Replace "euclidean" with your preferred metric

                                        # Perform K-means clustering
k <- 3  # Choose the number of clusters
kmeans_result <- kmeans(dist_matrix, centers = k)

                                        # Visualize results (e.g., using plot.kmeans)
plot(kmeans_result)
