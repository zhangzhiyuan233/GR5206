# HW2: loop2
#
# 1. Use a `for` loop to create a vector `x1` that stores the Displacement (`disp`) of the `mtcars` dataset, whose values are 160 or higher.
# 2. Use a `for` loop to create a vector `x2` that stores the Displacement (`disp`) of the `mtcars` dataset in order, until it observes a value strictly smaller than 160.(Do not include that value less than 160).
# 3. Do the above exercise no.2 again, but use a `while` loop instead, name the vector `x2_new`.
# 4. Use a `for` loop to create a vector `x3` that stores the Displacement (`disp`) of the `mtcars` dataset, making all the values greater than 160 to be exactly 160.
## Do not modify this line! ## Write your code for 1. after this line! ##
cars <-as.vector(mtcars$disp)
x11 <-c()

for(i in 1:length(cars)){
  x11[i] <-ifelse(cars[i]>=160,cars[i],NA)
}
x1 <-na.omit(x11)
x1 <-as.vector(x1)
## Do not modify this line! ## Write your code for 2. after this line! ##
x21 <-c()
for(i in 1:length(cars)){
  x21[i] <-ifelse(cars[i]>=160,cars[i],NA)
  if(cars[i]<160){
    break
  }
}
x2 <-na.omit(x21)
x2 <-as.vector(x2)
## Do not modify this line! ## Write your code for 3. after this line! ##
i<-1
x22 <-c()
length(cars)
while(cars[i+1]<=160)
{
  x22[i]<-cars[i]
  i <- i+1
}
x2_new <-x22

  
## Do not modify this line! ## Write your code for 4. after this line! ##
x31<-c()
for(i in 1:length(cars)){
  x31[i]<-ifelse(cars[i]<=160,cars[i],160)
}
x3<-x31
x3
