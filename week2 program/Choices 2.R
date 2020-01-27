HW2: choices2
#
# 1. Create a function `is_prime` that checks if an integer is a prime number or not,
# `is_prime` takes one parameter named `num`, return `True` if `num` is a prime number, return `False` if it is composite.
# 2. Use a `for` loop to create an integer vector `x`, containing the all prime numbers from 1 to 100.
# 3. How many prime numbers are greater than 30 but less than 80? Save the answer into scalar `a`.
# 4. Calculate the sum of the 2nd, 4th, 6th... prime number below 100. Save the anser into scalar `b`.

## Do not modify this line! ## Write your code for 1. after this line! ##
is_prime <- function(x){
  if(x==2){return(TRUE)}
  else if(any(x%%2:(x-1)==0)){
    return(FALSE)
  }else{return(TRUE)}
}
is_prime(55)
## Do not modify this line! ## Write your code for 2. after this line! ##
y <-rep(T,100)
for(i in 1:100)
{
  ifelse(is_prime(i),y[i]<-T,y[i]<-F)
}
x <-c(1:100)
x <-x[y]

## Do not modify this line! ## Write your code for 3. after this line! ##
num <-x[x>30 & x<80]
a <-length(num)
## Do not modify this line! ## Write your code for 4. after this line! ##
x1 <-x
ind <-rep(c(F,T),12)
x2 <-x1[ind]
x2
b <-sum(x2)





