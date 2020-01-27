# HW1: list7
#
# 1. Create a list `l1` consist of 52 components from 'a' to 'z' and 'A' to 'Z'. (hint: check variables letters and LETTERS)
# 2. Convert the list `l1` into a new 13 x 4 list `l2` filling by column.
# 3. Convert the list `l1` into a vector `x1`.
# 4. Convert the list `l1` into an atomic vector `x2`. (hint: `x1` should be different with `x2`)

## Do not modify this line! ## Write your code for 1. after this line! ##
l11 <-c(letters)
l12 <-c(LETTERS)
l1 <- as.list(c(l11,l12))

## Do not modify this line! ## Write your code for 2. after this line! ##
l21 <-l1
l21 <- dim(l1) <-c(13,4)
l2 <- matrix(unlist(l21),nrow = 13,ncol = 4,byrow = T)
l2_list <- l1
dim(l2_list) <- c(13, 4)
l2_char <- matrix(unlist(l1), 13, 4)
## Do not modify this line! ## Write your code for 3. after this line! ##
x1 <-unlist(l1,use.names=TRUE)
## Do not modify this line! ## Write your code for 4. after this line! ##
x2 <-unlist(l1, use.names=FALSE)
x1
x2