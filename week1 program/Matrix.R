# HW1: matrix2
#
# 1. Create a 10 x 10 matrix `m1` whose i-th row,j-th column element is (i+1)/(j+1). (hint: check the `outer`` function)
# 2. Copy `m1` into a matrix `m2` and replace the non-integer value by 0.
# 3. Flatten the matrix `m2` column-vise and assign it to `v1`.
# 4. Copy `v1` to `v2`, remove the duplicated value and sort it in decreasing order. (hint: check the `unique` function)

## Do not modify this line! ## Write your code for 1. after this line! ##
a <-c(1:10)
b <-c(1:10)
f <-function(x,y){(x+1)/(y+1)}
m1<-outer(a,b,f)
m1
## Do not modify this line! ## Write your code for 2. after this line! ##
m2 <-m1
m2 <- ifelse(m2-as.integer(m2)!=0,0,m2)



## Do not modify this line! ## Write your code for 3. after this line! ##

v1 <- as.vector(t(m2))
## Do not modify this line! ## Write your code for 4. after this line! ##
v22<-v1
v23<-unique(v22)
v2<-sort(v23, decreasing = TRUE)
