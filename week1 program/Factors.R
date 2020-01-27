# HW1: factor8
#
# 1. Create an ordered factor `f1` consist of letters 'a' to 'z' ordered alphabetically.
# 2. Create an ordered factor `f2` consist of letters 'a' to 'z' in descending alphabetical order.
# 3. Create a 30 elements, ordered factor `f3` consist of letters 'a' to 'z' followed by 4 'NA'. The order of `f3` is 'a'<...<'z'<'NA'.
# 4. Delete the element 'c' with the level 'c' and assign it to `f4`.

library(tidyverse)
## Do not modify this line! ## Write your code for 1. after this line! ##
alphat <- c(letters)
f1 <- factor(alphat, ordered = TRUE, levels = alphat)

## Do not modify this line! ## Write your code for 2. after this line! ##
f2 <-rev(f1)
f2 <-factor(f1,ordered = TRUE, levels =f2)
f2
## Do not modify this line! ## Write your code for 3. after this line! ##
alphat1 =c(letters,NA,NA,NA,NA)
f3 <- factor(alphat1, ordered = TRUE,levels = alphat1)
f3 <-addNA(f3)
## Do not modify this line! ## Write your code for 4. after this line! ##
f4 <-f3[f3 !='c']
f4 <-droplevels(f4)
