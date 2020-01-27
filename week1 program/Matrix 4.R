# HW1: linear algebra
#
# 1. Assign to `a` a 3x3 matrix filled by row with numbers between 1 and 9.
# 2. Assign to `ca` the matrix corresponding to the upper triangulart of the cholesky decomposition of `a`.
# In other words, find `ca` such that `t(ca) %*% ca = a`. (hint: look at the function `chol`)
# 3. Assign to `eva` the first eigenvector of `a`. (hint: look at the function `eigen`)
# 4. Assign to `iea` the inverse of the matrix composed of the eigenvectors of `a` (hint: look at the function `solve`)
# 5. Assign to `ra` the rank of `a`. (hint: look at the function `qr`)

## Do not modify this line! ## Write your code for 1. after this line! ##
numbers <-c(1:9)
a <-matrix(numbers,nrow = 3,ncol =3,byrow = T )
## Do not modify this line! ## Write your code for 2. after this line! ##
ca <- chol(a, pivot = T)
ca <- ca[,order(attr(ca,"pivot"))]


## Do not modify this line! ## Write your code for 3. after this line! ##
eva1<-eigen(a)

eva_vector <-eva1$vectors
eva <-as.vector(eva_vector[,1])

eva <- eigen(a)$vectors[,1]
## Do not modify this line! ## Write your code for 4. after this line! ##
one <- matrix(c(1,0,0,0,1,0,0,0,1),ncol=3,nrow=3,byrow = T)
iea <-solve(eva1$vectors)
## Do not modify this line! ## Write your code for 5. after this line! ##
ra<-qr(a)$rank
qr(a)
