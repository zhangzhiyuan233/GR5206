# HW2: string problems
#
# 1. Create a function `string1` that takes as input a string `x` consisting of letters and numbers, such as '12345abcde',
#    and splits each element, returning a character list. (Hint : Loop up the function `strsplit`)
# 2. Create a function `string2` returning a character vector instead of a list.
# 3. Create a function `string3` that takes as input a string `x` and two parameters `i` and `j`, selecting the ith and jth elements in the string and returning them as a character vector.
#    If i > j, or if i or j individually do not correspond to an element of the list, `string3` returns `NA`, if i = j, it returns the ith element, and returns a character vector composed of the ith and jth element otherwise.
# 4. Create a function `string4`, that takes as input a string `x` and two parameters `i` and `j` and returns the sub-string of x between the ith and jth elements included.
#    It should return `NA` if `i` and `j` do not correspond to any element of the list.
# 5. Create a function `string5`, that takes as input a string `x`, two parameters `i` and `j` and a logical parameter `decreasing`
#    that returns the reversed sub-string `decreasing` is True, and the substring when `decreasing` is False.
#    Example: `input(x = '12345abcde', i = 2, j = 7, decreasing = T)` should return 'ba5432'

## Do not modify this line! ## Write your code for 1. after this line! ##
string1 <-function(x){
  result <-c()
  result <-strsplit(x,NULL)
}

## Do not modify this line! ## Write your code for 2. after this line! ##
string2 <-function(x){
  result <-c()
  result <-strsplit(x,NULL)
  result <-unlist(result)
}
## Do not modify this line! ## Write your code for 3. after this line! ##
string3 <-function(x,i,j){
 
  str <-string2(x)
  if(i==j){return(str[i])}
  if(i>j|i>length(str)|j>length(str))
  {
    return(NA)
  }
  else{
    return(c(str[i],str[j]))
  }
}

## Do not modify this line! ## Write your code for 4. after this line! ##
string4 <-function(x,i,j){
  str <-string2(x)
  if(i>length(str)|i<1|j>length(str)|j<1|j<i){return(NA)}
  else{return(substr(x,i,j))}
}

a <-string4("dshuisfhiu",4,7)
a

## Do not modify this line! ## Write your code for 5. after this line! ##
string5 <-function(x,i,j,desc=c(T,F)){
  x <-string4(x,i,j)
  rev_x <-rev(x)

  
  answer1 <-paste(x,collapse = "")
  answer2 <-paste(rev_x,collapse ="")
  if(desc == FALSE){return(answer1)}
  else{
    return(answer2)
  }
}
string5 <- function(x, i, j, desc){
  x <- as.character(x)
  x <- strsplit(x, split="")
  a <- unlist(x)
  if(i<=j&j<=length(a)){
    if(desc) return(paste(a[j:i], collapse=''))
    else return(paste(a[i:j],collapse=''))
  } 
  else return(NA)
}

a <-string5("dshuisfhiu",5,4, desc =T)
b <-string5("dshuisfhiu",4,7, desc =T)

c <-string4("haduhfsiudhfwl",3,6)
d <-rev(c)
