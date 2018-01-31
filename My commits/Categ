# Categ is a function to convert each element of a PPM matrix in their respective transition class as a factor.

# It's should be especially useful to add in other functions when is necessary perform specific calculus for each one matrix transition element.

#================================================
Categ<-function(x){
# x is your mean or sample population projection matrix
	# Stasis
diag(x) <- "Stasis"
	# Retrogressions
x[upper.tri(x)] <- "Retrog"
xus
	# Growth
x[lower.tri(x)]<-"Growth"
	# Fertility	
x[1,]<-"Fert"
return(x)
}
#================================================

# Usage
xus<-matrix(1:25,5)
Categ(xus)

# or

library(popbio)
Categ(hudsonia)
