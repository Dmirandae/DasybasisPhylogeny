library(geomorph)

## get a rps file and write it scaled with id

getwd()

rutaDatos <- "../landmarks/test/"

archivosTps <- list.files(path=rutaDatos,"tps")

archivosTps

input_file <-  paste(rutaDatos,archivosTps[3],sep="")

output_file <- paste(rutaDatos,"mod",archivosTps[1],sep="")


b <- readland.tps(input_file,readcurves = FALSE,specID = "ID")


writeland.tps(b, output_file,specID = TRUE)


str(b)
class(b)


getTheID <- function(TPSobject) {attr(TPSobject, "dimnames")[[3]]}

getTheID(b)



