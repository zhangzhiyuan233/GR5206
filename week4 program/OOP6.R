# HW4: OOP_account
#'
# In this exercise, we will create a class `account`.
#'
# 1. Create a constructor `new_account(number)` that takes in a length 2 numeric
#    vector and initiates an object of class `account` using `structure`.
#    Class `account` should have an attribute `units` which is always the character vector `c('USD', 'EUR')`.
#    The value should be the amount of money in each currency.
#    Don't forget to use `stopifnot` to check if `number` is numeric or not and if the length of number is different from 2.
#    For example, `new_account(c(5, 0))` will create an account with 5 USD.
#    `new_account(c(0, 5))` will create an account with 5 EUR.
#    `new_account(c(5, 10))` will create an account with 5 EUR and 10 USD.
## Do not modify this line!
new_account <-function(number){
  stopifnot(is.numeric(number))
  stopifnot(length(number)==2)
  structure(number,class = "account",units = c('USD', 'EUR'))
}





# 2. Use `pmatch` to reate a function `get_unit_index(units)` to get the index of input `units` in `c('USD, 'EUR')`.
#    You are supposed to use this function in the following questions.
#    For example, `get_unit_index('EUR') = 2`. `get_unit_index('US') = 1`.
#    `get_unit_index('U','E') = c(1, 2)`.
## Do not modify this line!

get_unit_index <-function(units){
 result <-pmatch(units,c("USD","EUR"))
}
a1 <-get_unit_index(c('U','E'))
a2 <-get_unit_index("U")
# 3. Create a helper function `account(number, units)` that takes in a scalar or vector `number`
#    with corresponding `units` which initiates an object of class `account`.
#    `units` might include `EUR`, `USD`.
#    For example, `account(5, 'USD')` will create an account with 5 USD.
#    `account(5, 'EUR')` will create an account with 5 EUR.
#    `account(c(5, 10), c('EUR', 'USD'))` will create an account with 5 EUR and 10 USD.
#    Create an account with 100 USD and 100 EUR. Save it as `my_account`.
## Do not modify this line!


account <-function(number,units){
  unit <-get_unit_index(units)
  if(length(unit)==2){
    ifelse(unit ==c(1,2),result <-new_account(number),result <-new_account(c(number[2],number[1])))
  }
  else if(unit ==1){result <-new_account(c(number,0))}
  else if(unit ==2){result <-new_account(c(0,number))}
  return(result)
}
my_account <-account(c(100,100), c("USD","EUR"))
current <- c(my_account[1],my_account[2])
my_account1 <-account(10,"EUR")


# 4. Creat two generic functions `deposit(account, number, units)` and `withdraw(account, number, units)`
#    that takes in a scalar or vector `number` with corresponding `units`.
#    `units` might include `EUR`, `USD`.
#    Methods `deposit.account` and `withdraw.account` should return an object of class `account` with correct amounts.
#    Deposit 50 USD and withdraw 50 EUR for `my_account`.
## Do not modify this line!
c1 <-c(100,200)
c2 <-c(100,300)
c3 <-c1+c2
deposit <-function(account, number, units){
  UseMethod("deposit")
}
withdraw <- function(account, number, units){
  UseMethod("withdraw")
}
deposit.account <-function(account, number, units){
  current <- c(account[1],account[2])
  unit <-get_unit_index(units)
  if(length(unit)==2){
    ifelse(unit ==c(1,2),result <-new_account(current+number),result <-new_account(current+c(number[2],number[1])))
  }
  else if(unit ==1){result <-new_account(current+c(number,0))}
  else if(unit ==2){result <-new_account(current+c(0,number))}
  return(result)
}
withdraw.account <-function(account, number, units){
  current <- c(account[1],account[2])
  unit <-get_unit_index(units)
  if(length(unit)==2){
    ifelse(unit ==c(1,2),result <-new_account(current-number),result <-new_account(current-c(number[2],number[1])))
  }
  else if(unit ==1){result <-new_account(current-c(number,0))}
  else if(unit ==2){result <-new_account(current-c(0,number))}
  return(result)
}

my_account <-withdraw(my_account,50,"EUR")
my_account <-deposit(my_account,50,"USD")





# 5. Write a new `summary` method for class `account`. `summary(account, units)` should return a named vector
#    which has the same length and names as `units`.
#    The reurn value should be the total amount of the `account` in `units`.
#    For simplicity, 1 EUR = 1.1 USD.
#    For example, `summary(my_account, c('USD', 'EUR'))` should return a named vector with values `c(150, 50)`.
#    `summary(my_account, 'USD')` should return a named vector with value `205`.
## Do not modify this line!



summary(my_account,c('EUR', 'USD'))


summary(my_account,"EUR")
summary.account <- function(account, units) {
  vec <- get_unit_index(units)
  if(length(vec)==1) {
    if(vec==1) {
      #USD
      value <- account[2]*1.1000+account[1]
      return(c("USD"=value))        
      
    } else {
      #EUR
      value <- account[1]/1.1000+account[2]
      return(c("EUR"=value))
    } 
  } else {
    if(vec[1]==1 & vec[2]==2) {
      #USD EUR
      return(c("USD"=account[1],"EUR"=account[2]))        
    } else {
      #EUR USD
      return(c("EUR"=account[2],"USD"=account[1]))    
    }
  }
}
summary(my_account,"USD")
summary(my_account, c('USD', 'EUR'))


# 6. Now let's consider a subclass `minimum_balance_account` which should maintain a pre-determined minimum balance.
#    Create a constructor `new_minimum_balance_account(number, minimum)` that takes in legnth 2 numeric vectors and
#    initiates an object of subclass `minimum_balance_account` using `structure`.
#    Subclass `minimum_balance_account` should have an attribute `units` which is always
#    the character vector `c('USD', 'EUR')` and an attribute `minimum` which is a numeric vector.
#    The value should be the amount of money in each currency.
#    Don't forget to use `sopifnot` to check if `number` and `minimum` are numeric or not.
#    For example, `new_minimum_balance_account(c(5, 0), c(1, 0))` will create an account
#    with 5 USD and minimum balance 1 USD.
## Do not modify this line!
new_minimum_balance_account <-function(number, minimum){
  stopifnot(is.numeric(number),is.numeric(minimum),length(number)==2,length(minimum)==2)
  structure(number,minimum=minimum,class ="minimum_balance_account", units = c('USD', 'EUR') )
}


# 7. Create a helper function `minimum_balance_account(number, units, minimum, minimum_units)`
#    that takes in a scalar or vector `number` and `minimum`
#    with corresponding `units` and `minimum_units` which initiates an object of subclass `minimum_balance_account`.
#    `units` and `minimum_units` might include `EUR`, `USD`.
#    For example, `minimum_balance_account(5, 'USD', 1, 'USD')` will create an account
#    with 5 USD and minimal balance 1 USD.
## Do not modify this line!
minimum_balance_account <-function(number, units, minimum, minimum_units){
  unit1 <-get_unit_index(units)
  unit2 <-get_unit_index(minimum_units)
  if(length(unit1)==2){
    ifelse(unit1 ==c(1,2),number1 <-number,number1 <-c(number[2],number[1]))
  }
  else if(unit1 ==1){number1 <-c(number,0)}
  else if(unit1 ==2){number1 <-c(0,number)}
  
  if(length(unit2)==2){
    ifelse(unit2 ==c(1,2),number2 <-minimum,number2 <-c(minimum[2],minimum[1]))
  }
  else if(unit2 ==1){number2 <-c(minimum,0)}
  else if(unit2 ==2){number2 <-c(0,minimum)}
  return(new_minimum_balance_account(number1,number2))
}
my_min_account <-minimum_balance_account(5, 'USD', 1, 'USD')




# 8. Add method for `withdraw` and modify `deposit.account` if needed such that:
#    a. The returned value should be the same class of input `account`.
#    b. Function `deposit` can accpet `minimum_balance_account` and return correct object.
#    c. If withdraw will cause the balance lower than the minimum balance,
#       report an error 'Minimum balance must be maintained.'.
#    d. Use `withdraw.account` in `withdraw.minimum_balance_account`.
## Do not modify this line!


deposit.account <- function(account, number, units){

  if(class(account)=="account"){
  current <- c(account[1],account[2])
  unit <-get_unit_index(units)
  if(length(unit)==2){
    ifelse(unit ==c(1,2),result <-new_account(current+number),result <-new_account(current+c(number[2],number[1])))
  }
  else if(unit ==1){result <-new_account(current+c(number,0))}
  else if(unit ==2){result <-new_account(current+c(0,number))}
  return(result)
  }
  else{
    current <- c(account[1],account[2])
    unit <-get_unit_index(units)
    if(length(unit)==2){
      ifelse(unit ==c(1,2),result <-new_minimum_balance_account((current+number),c('USD','EUR'),attr(account,"minimum"),c('USD','EUR')))
    }
    else if(unit ==1){result <-new_minimum_balance_account(current+c(number,0),c('USD','EUR'),attr(account,"minimum"),c('USD','EUR'))}
    else if(unit ==2){result <-new_minimum_balance_account(current+c(0,number),c('USD','EUR'),attr(account,"minimum"),c('USD','EUR'))}
  }
}


## Do not modify this line!

deposit.account <- function(account, number, units){
  if(class(account)=='account')
  {
    amounts <- c(0,0)
    amounts[1] <- account[1]
    amounts[2] <- account[2]
    index <- get_unit_index(units)
    if(length(number)==1){
      amounts[index] <- account[index]+number
      account(amounts,c('USD','EUR'))
    }
    else{
      amounts[index] <- account[index]+number[index]
      return(account(amounts,c('USD','EUR')))
    }
  }
  else{
    
    amounts <- c(0,0)
    amounts[1] <- account[1]
    amounts[2] <- account[2]
    index <- get_unit_index(units)
    if(length(number)==1){
      amounts[index] <- account[index]+number
    }
    else{
      amounts[index] <- account[index]+number[index]
    }
    
    return(minimum_balance_account(amounts,c('USD','EUR'),attr(account,'minimum'),c('USD','EUR')))
  }
}

withdraw.minimum_balance_account <- function(minimum_balance_account, number, units){
  ac <- account(minimum_balance_account[1:2],c('USD','EUR'))
  w_ac <- withdraw.account(ac, number, units)
 # w_ac[1:2]
#  print('............')
  if(sum(w_ac>=attr(minimum_balance_account,'minimum'))!=2) stop('Minimum balance must be maintained.')
  else return(minimum_balance_account(ac,c('USD','EUR'),attr(minimum_balance_account,'minimum'),c('USD','EUR')))
}







