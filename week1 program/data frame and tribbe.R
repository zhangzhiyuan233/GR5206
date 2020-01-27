# HW1: data frames and tibbles
library(tibble)
# 1. Convert the dataset `mtcars` to a tibble `t1`.
# 2. Create a tibble `t2` which contains all columns of `t1` with a miles per gallon higher than 18.
# 3. Create a tibble `t3` that contains all the values of `t2` truncated to the corresponding integer.
# 4. Copy `t3` into a tibble `t4` and merge its two columns 'vs' and 'am' by summing them, rename it 'vsam' and make sure it is `t4`'s first column.

## Do not modify this line! ## Write your code for 1. after this line! ##
t1 <- as_tibble(mtcars)
## Do not modify this line! ## Write your code for 2. after this line! ##
t2 <-t1[which(t1$mpg>18),]
## Do not modify this line! ## Write your code for 3. after this line! ##
t31 <-lapply(t2, as.integer)
t3 <-as_tibble(t31)
## Do not modify this line! ## Write your code for 4. after this line! ##
t4<-t3
t4<- transform(t3,vsam = vs+am)
t4<- t4[c(12,1,2,3,4,5,6,7,8,9,10,11)]
t4<- as_tibble(t4)
