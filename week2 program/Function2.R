# HW2: function2
#
# 1. Create a function `f1` that takes an input vector `v` and an integer `a`, and returns `TRUE` if `a` appears in `v`, otherwise `FALSE`.
#    The answer should include a `for` loop.
# 2. Create a function `f2` that takes an input vector `v` and an integer `a`, and returns how many times `a` appears in `v`,
#    if `a` does not appear in `v`, return `0`. The answer should include a `for` loop.
# 3. Create a function `f3` that takes an input vector `v` and an integer `a`, and returns where does `a` appear in `v`.
#    For example `f3(v = c(1,1,2,3,1,5), a = 1) = c(1,2,5)`. if `a` does not appear in `v`, return `NULL`. The answer should include a `for` loop.
# 4. Create a function `f4` that takes an input vector `v` and an integer `a`, and returns the `TRUE` if there are two numbers in `v` sum up to `a`, otherwise `FALSE`.
#    For example, `f4(v = c(1,4,9,5,15), a = 10) = TRUE`, because `1 + 9 = 10`. The answer should include a `for` loop.

## Do not modify this line! ## Write your code for 1. after this line! ##
f1 <-function(v,a){
  for(i in 1:length(v)){
    if(v[i]==a){
      return(T)
    }
  }
  return(F)
}

v <-c(2,3,0,5,12,5)
a <-f1(v,5)
## Do not modify this line! ## Write your code for 2. after this line! ##
f2 <-function(v,a){
  sum <-0
  for(i in 1:length(v)){
    if(v[i]==a){sum <-sum+1}
  }
  return(sum)
}
## Do not modify this line! ## Write your code for 3. after this line! ##
v <-c(2,3,0,5,12,5)
f3 <-function(v,a){
  loc <-c()
  j=1
for(i in 1:length(v)){
  if(v[i]==a){
    loc[j] <-i
    j <-j+1
  }
}
return(loc)
}
e <-f3(v,6)
v[-1]
7-v[1]==v[-1]
a <-7
## Do not modify this line! ## Write your code for 4. after this line! ##
f4 <-function(v,a){
  v1 <- a-v
  for(i in 1:length(v)){
    for(j in 1:length(v)){
    if(v[i]==v1[j] & i!=j){return(T)}
    }
  }
  return(F)
}
  
g <-f4(v,2)



