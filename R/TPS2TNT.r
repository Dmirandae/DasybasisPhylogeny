#suppressMessages()

library(geomorph)




## get a rps file and write it scaled with id



rutaDatos <- "/home/rafael/proyectosDRME/tabanos/Dasybasis/2024/landmarks/2024/completos/"


archivosTps <- list.files(path=rutaDatos,"tps")


DasybasisLM <- readmulti.tps(
  paste0(rutaDatos,"/",archivosTps,sep=""),
  readcurves = FALSE,specID = "ID")



numeroEspecies <- dim(DasybasisLM)[3]
numeroLM <- dim(DasybasisLM)[1]



cat("xread\n'File=",
     archivosTps,
    ". A landmark data set  2D converted by TPS2TNT' 1 ",numeroEspecies,
    "\n&[ landmark 2D ]",sep="")


for (nSp in 1:numeroEspecies){

  cat("\n",dimnames(DasybasisLM)[[3]][nSp]," ",sep="")

  v1 <-  (DasybasisLM)[,1,nSp]
v2 <-  (DasybasisLM)[,2,nSp]

v1[is.na(v1)] <- "?" 
#v2[is.na(v2)] <- "?" 

#  cat(v1)
#  cat(v2)
  
                                        #~


for (contador in 1:length(v1)){

  if(v1[contador]=="?"){cat("?")}else{cat(v1[contador],v2[contador],sep=",")}
  cat (" ")

}

  }

cat("\n;\nproc/;")
