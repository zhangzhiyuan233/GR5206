#' HW2: triple_dot
#'
#' This exercise is to help you understand `...` arguments in function (Advanced R Ch6.6).
#'
#' 1. Create a function `f1` with an argument arg so that `f1(name)` will print some fixed message followed by the content of `name`.
#' For instance, `f1(name = "Bob")` will print
#' Hello Bob!
#' Notes: punctuation mark after the name(Bob here).
#' Hint: try `cat()`and`paste0(xxx,"!\n")`.
#'
## Do not modify this line!
f1 <-function(name){
a <-paste0(name,"!\n")
cat("Hello",a)
}
f1("Bob")

#' 2. Create a function `f2(places)` so that the result of `f2(place)` are the following:
#' `f2("Columbia")` will output
#' From Columbia
#' `f2(c("Columbia", "MIT"))` will output
#' From Columbia and MIT
#' `f2(c("Columbia", "MIT", "Harvard"))` will output
#' From Columbia, MIT and Harvard
#' `f2(c("Columbia", "MIT", "Harvard", "Berkeley"))` will output
#' From Columbia, MIT, Harvard and Berkeley
#' Notes:
#' 1) Take care of the space ' ' and comma ','.
#' 2) The length of input will exceed 4.
#' Hints:
#' 1) You need to consider the length of `places` (1, 2, >=3).
#' 2) If `msg = 'From'` then try something like `msg <- paste0(msg, collapse = ", ")` of course, you need some modification :).
#' 3) You can retrieve `'MIT'` like `places[2]` if `places = c("Columbia", "MIT", "Harvard", "Berkeley")`.
#'
#'
## Do not modify this line!
f2 <-function(places){
  if(length(places)==1){
    a <-cat("From",places,sep = " ")}
  else if(length(places)==2){
    a <-cat("From",places[1],"and",places[2])
  }
  else{
    a <-cat("From",places[1],sep=" ")
    for(i in 2:(length(places)-1)){
      a <-cat(a,places[i],sep = ", ")
    }
    a <-cat(a,places[length(places)],sep = " and ")
  }
  }
f2(c("Columbia", "MIT", "Harvard", "Berkeley"))

f2 <- function(places){
  len  = length(places)
  if(len==1) cat('From',places, sep=' ')
  else if(len==2) cat('From',places[1],'and',places[2],sep=' ')
  else {
    msg <- cat('From',places[1],sep=' ')
    for (i in 2:(len-1)){
      msg <- cat(msg,places[i],sep=', ')
    }
    msg <- cat(msg,places[len], sep=' and ')
  }
}

#' 3. Create a function `f3` with `...` argument,i.e.`f3(...)` , so that
#' `f3()` will output nothing while `f3(places)` is the same as `f2(places)`.
#' Hint: try `mising(...)` and `unlist(list(...))`.
#'
## Do not modify this line!
f3 <-function(...){
  if(missing(...)){return(NA)}
  else{f2(...)}
}
f3(c("Columbia", "MIT", "Harvard", "Berkeley"))



#' 4.Let's combine everything together.
#' Create `f4(name, ...)` so that
#' `f4("Bob")` will print the same is `f1("Bob")`
#' `f4(name, places)` will print have two lines' output
#' The first line will be the same as `f1("Bob")`
#' The second line will be the same as `f3(places)`
#' For example
#' `f4("Bob", "Columbia", "MIT", "Berkeley")`
#' Hello Bob!
#' From Columbia, MIT and Berkeley
#' Hint: try to make use of the functions you made above.
#'
## Do not modify this line!
f4 <-function(name, ...){
  f1(name)
  f3(...)
}

f4("Bob", c("Columbia", "MIT", "Harvard", "Berkeley"))





