# HW1: array5
#
# 1. Create a 10 x 10 matrix `m1` such that the i-th row j-th column element is the max(i,j).
# 2. Create a 10 x 10 matrix `m2` such that the i-th row j-th column element is the min(i,j).
# 3. Combine `m1` as the first slice and `m2` as the second slice to a 10 x 10 x 2 array `a1`.
# 4. Turn the array `a1` into a 10 x 2 matrix `m3` by summing over the second dimension.
#   (hint: you can calculate directly from `m1` and `m2` or use the function apply)

## Do not modify this line! ## Write your code for 1. after this line! ##
a <-c(1:10)
b <-c(1:10)
f <-function(x,y){ifelse(x>=y,x,y)}
m1 <-outer(a,b,f)



## Do not modify this line! ## Write your code for 2. after this line! ##
a <-c(1:10)
b <-c(1:10)
f <-function(x,y){ifelse(x<=y,x,y)}
m2 <-outer(a,b,f)
## Do not modify this line! ## Write your code for 3. after this line! ##
a1 <-array(c(m1,m2),dim = c(10,10,2))
## Do not modify this line! ## Write your code for 4. after this line! ##
m31 <-apply(m1,2,sum)
m32 <-apply(m2,2,sum)
m3 <-matrix(c(m31,m32),nrow = 10, ncol=2)
