# HW2: Loops
#
# 1. Initialize a 10*10 matrice with NA, called `mat`.
# 2. Use a `for` loop to create the following matrix, and store it in `mat`.
# 
# 0    1    2    3    4    5    6    7    8     9
# 1    0    1    2    3    4    5    6    7     8
# 2    1    0    1    2    3    4    5    6     7
# 3    2    1    0    1    2    3    4    5     6
# 4    3    2    1    0    1    2    3    4     5
# 5    4    3    2    1    0    1    2    3     4
# 6    5    4    3    2    1    0    1    2     3
# 7    6    5    4    3    2    1    0    1     2
# 8    7    6    5    4    3    2    1    0     1
# 9    8    7    6    5    4    3    2    1     0
#
# 3. Use a for loops to update the diagonal of the matrix with the elements 9 to 0.
# 4. Create a new matrix `mat2` by converting the values in `mat` using `vectorised if`, setting numbers higher than 5 to `TRUE` and others to `FALSE`.
# 5. Use a for loop to calculate the sum of rows and columns, and store them in the variables `row_sum1` and `col_sum1`.
# 6. Use the `apply()` function to calculate the row sum and column sum, and store them in the variables `row_sum2`, `col_sum2`.
#

## Do not modify this line! ## Write your code for 1. after this line! ##
NAmat <-rep(NA,100)
mat <-matrix(NAmat,nrow = 10,ncol=10,byrow = T)
## Do not modify this line! ## Write your code for 2. after this line! ##
for(i in 1:nrow(mat))
{
  mat[i,i:10] <-0:(10-i)
  mat[i:10,i] <-0:(10-i)
}

## Do not modify this line! ## Write your code for 3. after this line! ##
for(i in 1:nrow(mat))
{
  mat[i,i] <-10-i
}
## Do not modify this line! ## Write your code for 4. after this line! ##
mat2 <-ifelse(mat>5,T,F)
## Do not modify this line! ## Write your code for 5. after this line! ##
row_sum1 <-c()
col_sum1 <-c()
for(i in 1:nrow(mat)){
  row_sum1[i] <- sum(mat[i,])
  col_sum1[i] <-sum(mat[,i])
}

## Do not modify this line! ## Write your code for 6. after this line! ##
row_sum2 <-apply(mat,1,sum)
col_sum2 <-apply(mat,2,sum)
