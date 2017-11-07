#Get values of matA to each species 
#Obtem valores de matA para cada espécie desejada


getMatA<-function(sp){
  sp<-as.character(sp)
  id<-grep(sp,comadre$metadata$SpeciesAccepted)
  Matrices<-comadre$mat[(id)]
  lapply(Matrices, get,x="matA")
}



#Usage
library(Mage)#Mage is recent available package by COM(P)ADRE Team

load("~/COMADRE_v.2.0.1.RData")

getMatA("Ursus_maritimus")

