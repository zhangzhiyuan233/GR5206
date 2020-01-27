#' HW3: Bisection.
#'
#' In this exercise, you will implement a functional on your own: a root-finding algorithm called the bisection method.
#' For details, check the wikipedia page for 'Bisection Method': https://en.wikipedia.org/wiki/Bisection_method
#'
#' 1. Implement the bisection method using iteration and the scaffold given below.
#'    Argument `f` is the function of which we want to find the root.
#'    Argument `a` and `b` are two evaluated points.
#'    Argument `n` is the max number of iterations.
#'    Argument `tol` is the desired tolerence.
## Do not modify this line!

bisection <- function(f, a, b, n = 1000, tol = 1e-7) {
  for (i in 1:n) {
    # Calculate midpoint
    c <-(a+b)/2
    # If the function equals 0 at the midpoint or the midpoint is below the desired tolerance, stop the
    # function and return the root.
    if(f(c)==0||(b-a)/2<tol){
      return(c)
    }
    # If another iteration is required,
    # check the signs of the function at the points c and a and reassign
    # a or b accordingly as the midpoint to be used in the next iteration.
    ifelse(sign(f(c))==sign(f(a)),a <- c,b <- c)
  }
}
f <-function(x){
  x^3-3.34*x-5
}
ans <-bisection(f,-1.99,4.58,n = 1000, tol = 1e-7)
ans

#' 2. Modify the function `bisection` such that if the signs of the function at the evaluated points are the same, throw an error with message
#'    `"The signs of f evaluated at the endpoints are the same."`.
#'    Also if the max number of iterations is reached and no root has been found, throw an error with message `"Max number of iterations reached."`.
## Do not modify this line!

bisection <- function(f, a, b, n = 1000, tol = 1e-7) {
  # If the signs of the function at the evaluated points, a and b, are the same, throw an error.
  if (sign(f(a))==sign(f(b))) {
    stop("The signs of f evaluated at the endpoints are the same.")}
  
  for (i in 1:n) {
    # Calculate midpoint
    c <-(a+b)/2
    # If the function equals 0 at the midpoint or the midpoint is below the desired tolerance, stop the
    # function and return the root.
    if(f(c)==0 ||(b-a)/2<tol){
      return(c)
    }
    # If another iteration is required,
    # check the signs of the function at the points c and a and reassign
    # a or b accordingly as the midpoint to be used in the next iteration.
    ifelse(sign(f(c))==sign(f(a)),a <- c,b <- c)
  }
  print("Max number of iterations reached.")
  # If the max number of iterations is reached and no root has been found, throw an error.
}
