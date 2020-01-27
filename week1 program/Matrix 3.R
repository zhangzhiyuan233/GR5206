install.packages("tibble")
install.packages("tidyverse")
library(tibble)
library(tidyverse)

# HW1: outer product
#
# 1. Create the vector `v`` containing numbers 1 to 7.
# 2. Create the matrix `outer_prod1`` which is the outer product of `v`.
# 3. Copy `outer_prod1` to `outer_prod2` and change the sign of the lower triangular part of `outer_prod2` from + to -.
# 4. Convert `outer_prod2` to a tibble `t1`.
# 5. Rename the columnns of `t1` as the first 7 letters of the alphabet.
# 6. Copy `t1` into `t2` and remove the columns 'd' of `t2`.

## Do not modify this line! ## Write your code for 1. after this line! ##
v <-c(1:7)
## Do not modify this line! ## Write your code for 2. after this line! ##
outer_prod1 <-outer(v,v,"*")
## Do not modify this line! ## Write your code for 3. after this line! ##
m2 <-outer_prod1
for ( i in 2:nrow(m2) ) {
  m2[i, 1:(i-1)]<-m2[i, 1:(i-1)]*-1}
outer_prod2 <- outer_prod1
-lower.tri(outer_prod2)
outer_prod2[lower.tri(outer_prod2)]  <- -outer_prod2[lower.tri(outer_prod2)]
## Do not modify this line! ## Write your code for 4. after this line! ##
t1<-as_tibble(m2)
## Do not modify this line! ## Write your code for 5. after this line! ##
colnames(t1)<-c('a','b','c','d','e','f','g')
## Do not modify this line! ## Write your code for 6. after this line! ##
t2 <- t1[colnames(t1)!='d']



l4 <- list(list(1, 2), 3,4) 
l4[[2]]

x <- c(2.1, 4.2, 3.3, 5.4) 
order(x)
x[order(x)]
x <- c(2.1, 4.2, 3.3, 5.4) 
x[c(2.1, 2.9)] 

x[]
(y <- setNames(x, letters[1:4])) 
y["c"]

a <- matrix(1:9, nrow = 3) 
colnames(a) <- c("A", "B", "C") 
a
a[1:2, ]

a[c(TRUE, FALSE, TRUE), c("B", "A")] 

df <- data.frame(x = 1:3, y = 3:1, z = letters[1:3])
df
df[c("x", "z")] 
df[, c("x", "z")] 

x <- list(a=1:3, "a", 4:6)
x$a[3]

x <- c(6,3,6,2,2,4,5,6)
x[1:2] <- c(33,77)
x
