# function for Kristin Winchell .tps analysis
# by Liam J. Revell 2012

tps.process<-function(filename,type=c("general","anole")){
	n<-length(filename)
	X<-list()
	type<-type[1]
	for(i in 1:n){
		f<-filename[i]
		lm<-as.numeric(strsplit(readLines(f,1)[[1]],"=")[[1]][2])
		X[[i]]<-read.table(f,skip=1,nrows=lm)
		id<-readLines(f,lm+2)[[lm+2]]
		id<-strsplit(id,"=")[[1]][2]
		id<-strsplit(id,".t")[[1]][1]
		names(X)[i]<-id
		scale<-readLines(f,lm+3)[[lm+3]]
		scale<-strsplit(scale,"=")[[1]]
		j<-1; while(scale[1]!="SCALE"){
			scale<-readLines(f,lm+3+j)[[lm+3+j]]
			scale<-strsplit(scale,"=")[[1]]
		}
		scale<-as.numeric(scale[2])
		X[[i]]<-X[[i]]*scale
		X[[i]]<-X[[i]]-matrix(1,nrow(X[[i]]),1)%*%matrix(apply(X[[i]],2,min),1,2)
		par(ask=FALSE)
		plot(X[[i]],asp=1)
		if(type=="anole"){
			lines(X[[i]][1:3,])
			lines(X[[i]][c(1,3),])
			for(j in 2:21) lines(X[[i]][(2*j):(2*j+1),])
		}
		text(x=par()$usr[1],y=0.95*par()$usr[4],id,pos=4)
		readline(prompt = "OK? Press <Enter> to continue...") 
	}
	return(X)
}

tps.postProcess<-function(X){
	if(!is.list(X)) X<-list(X)
	n<-length(X)
	LL<-matrix(NA,n,23)
	rownames(LL)<-names(X)
	colnames(LL)<-c("rJL","lJL","JW",
		"rMETC","lMETC","rRAD","lRAD","rULN","lULN","rHUM","lHUM",
		"PECT","PELV",
		"rFEM","lFEM","rTIB","lTIB","rFIB","lFIB","rMETT1","rMETT2","lMETT1","lMETT2")
	for(i in 1:n){
		D<-as.matrix(dist(X[[i]]))
		LL[i,1]<-D[1,2]
		LL[i,2]<-D[1,3]
		LL[i,3]<-D[2,3]
		for(j in 2:21) LL[i,j+2]<-D[(2*j),(2*j+1)]
	}
	return(LL)
}
