# HW1: type_conversions
#
# 1. Create a list `l` containing :
#       - a vector containing the first 20 numbers in increasing order,
#       - a vector containing the first 20 numbers in decreasing order,
#       - a list of 2 'a' and 2 'b' repeated 5 times (hint : lookup the function `rep()`).
# 2. Convert `l` to a tibble t1 of dimension 20 x 3
# 3. Rename the columns of the tibble `t1` to ('X1', 'X2', 'letters').
# 4. Copy `t1` into a tibble `t2` and delete the rows of `t2` with letter 'b'.
# 5. Create a matrix `m` containing the first two columns of `t2`
# 6. Compute the product `m_prod` of `m` and its transpose.
library(tibble)
## Do not modify this line! ## Write your code for 1. after this line! ##
v1 <-as.vector(c(1:20))
v2<-as.vector(c(20:1))
v3 <- as.vector(rep(c("a","a","b","b"),5))
l <- list(v1,v2,v3)
## Do not modify this line! ## Write your code for 2. after this line! ##
t1 <-as_tibble(l,.name_repair = "unique")
## Do not modify this line! ## Write your code for 3. after this line! ##
colnames(t1) <- c('X1', 'X2', 'letters')
## Do not modify this line! ## Write your code for 4. after this line! ##
t2 <-t1
t2 <-t2[-c(3,4,7,8,11,12,15,16,19,20),]
## Do not modify this line! ## Write your code for 5. after this line! ##
m <-t2[,1:2]
m <-as.matrix(m)
## Do not modify this line! ## Write your code for 6. after this line! ##
m_prod <-m %*%t(m)

