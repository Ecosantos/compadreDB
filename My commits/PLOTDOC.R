#Organize vital rates in columns to posterior analisis
# This function is modified from pfister.plot() function in popbio package



PLOTDOC<- function (A) 
{
  n <- length(A)
  if (class(A) != "list") {
    stop("A LIST of annual matrices is required")
  }
  if (length(unique(lapply(A, dim))) > 1) {
    stop("Matrices have different dimensions")
  }
  if (n < 2) {
    stop("A list of TWO or more annual matrices is required input")
  }
  col <- names(A)
  x <- dim(A[[1]])[1]
  row <- paste("a", 1:x, rep(1:x, each = x), sep = "")
  vr <- data.frame(matrix(unlist(A), ncol = n, dimnames = list(row, 
                                                               col)))
  vr$mean <- apply(vr, 1, mean)
  vr$var <- apply(vr, 1, var)
  vr$cv <- vr$var^0.5/vr$mean * 100
  meanA <- matrix(vr$mean, nrow = x)
  eigA <- eigen.analysis(meanA)
  vr$sens <- as.vector(eigA$sensitivities)
  vr$elas <- as.vector(eigA$elasticities)
  
  a=rep(rep(1:x,1),x)
  vr$VR<- VitalRate<-as.factor(as.vector((ifelse(a == 1, "Fertility", "Survival"))))
  vr1 <- subset(vr, mean > 0 & var > 0)
  vr1[, 1:n ]
}



#Usage:

library(popbio)
data(hudsonia)
PLOTDOC(hudsonia)
