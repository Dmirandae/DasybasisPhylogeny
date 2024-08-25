library(geomorph)

## get a rps file and write it scaled with id

getwd()

rutaDatos <- "/home/rafael/proyectosDRME/tabanos/Dasybasis/2024/landmarks/2024/Alas-Dasybasis"

archivosTps <- list.files(path=rutaDatos,"tps")

archivosTps

#input_file <-  paste(rutaDatos,archivosTps[3],sep="")

#output_file <- paste(rutaDatos,"mod",archivosTps[1],sep="")

DasybasisLM <- readmulti.tps(archivosTps,readcurves = FALSE,specID = "ID")
# b <- readland.tps(input_file,readcurves = FALSE,specID = "ID")

DasybasisLM

getTheID <- function(TPSobject) {attr(TPSobject, "dimnames")[[3]]}

sapply(DasybasisLM,getTheID)

getTheID(DasybasisLM)



####
writeland.tps(b, output_file,specID = TRUE)


str(b)
class(b)





