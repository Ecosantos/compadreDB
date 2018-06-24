#R code to transform arrays with dimension 3 (Myarray[x,y,z]) to a list of matrices
#This code would especially useful to deal with results of the replicate function

#The function

array_to_matrix<-function(A){
lapply(seq(dim(A)[3]), function(x) A[ , , x])
}

#Usage:
A1 <- matrix(runif(12),4,3)
A2 <- matrix(runif(12),4,3)
A3 <- matrix(runif(12),4,3)

MyList  <- list(A1,A2,A3)

MyArray <- array(NA,c(4,3,3))
MyArray[,,1] <- A1
MyArray[,,2] <- A2
MyArray[,,3] <- A3

