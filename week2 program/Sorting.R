# HW2: Sorting
#
# In this exercise, we will write a function to sort the input vector.
#
# 1. Use a `for` loop to go over the `qsec` column in `mtcars` dataset and assign to integer `n1` the position of the smallest number.
#    Note: if there are multiple smallest numbers, find the first occurrence.
# 2. Write a function `min_position(vec)` to return the position of the first occurrence of the smallest number. You should not use the `min` or `which` functions.
# 3. Write a function `my_sort(vec)` to return a sorted vector using the `min_position` function and a `while` loop. You should not use the `sort` or `order` functions.
# 4. Apply the `my_sort` function to the `qsec` column in `mtcars` dataset and store the sorted vector in `vec1`

## Do not modify this line! ## Write your code for 1. after this line! ##
## Do not modify this line! ## Write your code for 1. after this line! ##
df <- data.frame(mtcars)
n11<-100
index <-1
for(i in seq_along(df$qsec))
{
  if(df$qsec[i]<n11){
    n11 <-df$qsec[i]
    index <-i
  }
}
n1 <-index
## Do not modify this line! ## Write your code for 2. after this line! ##
vec <- c(1,4,1,6)
min_position <-function(vec){
  a <-vec[1]
  index <-1
  for(i in seq_along(vec)){
    if(vec[i]<a)
    {
      a <-vec[i]
      index <-i
    }
  }
  return(index)
}
vec
min_position(vec)
## Do not modify this line! ## Write your code for 3. after this line! ##
vec
my_sort <-function(vec){
times <-length(vec)
t <- 0
vec_result <-c()
i <-1
while(t<times)
{
point <-min_position(vec)
vec_result[i] <-vec[point]
vec <- vec[-point]
i <- i+1
t <- t+1
}
return(vec_result)
}
vec <-c(1,2,3,2,33,2,5)
result <-my_sort(vec)
## Do not modify this line! ## Write your code for 4. after this line! ##
vec1 <-my_sort(mtcars$qsec)



