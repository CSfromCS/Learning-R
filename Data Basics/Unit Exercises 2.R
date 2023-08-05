## PART 1

# a. Which of the following is a logical operator?
TRUE|FALSE    # TRUE or FALSE = TRUE
# b. What value does R return in the statement below?
3 >= 4
# c. What is the result of this calculation?
(45 + 3) * 43 + 3^2
# d. How would R evaluate the following?
carspeed = 70
speedlimit = 65
carspeed > speedlimit
# e. How would R evaluate the following?
(2+2 == 4) | (2+2 == 5)
# f. How would R evaluate the following?
!FALSE
# g. What is the result of this function?
round(33.2321435452, 2)
# h. What is the result of this function?
sqrt(64)
# i. What are the results of these statements?
sqrt(64) == 64^.5
abs(-32)
# k. Which of the following is an arithmetic operator?
5*5    # * for multiplication
# l. What is wrong with this code?
try(2 + 3 *4 + sqrt[100])   # Wrong: function calls use parenthesis () not square brackets [].
2 + 3 *4 + sqrt(100)    # Correct

## PART 2

# a) Create a vector called unemploy_rate with 12 values, one for each month in 2013. The values for each month are listed below (beginning with January's rate of 7.9).
unemploy_rate <- c(7.9, 7.7, 7.5, 7.5, 7.5, 7.5, 7.3, 7.2, 7.2, 7.2, 7.0, 6.7)

# a. Create a vector called month and add 12 values, one for the name of each month in a year.
month <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "July", "Aug", "Sep", "Oct", "Nov", "Dec")
month

# b. Convert month to a factor variable.
month <- factor(month)
month

# c. Create a data frame called monthly_rate that is comprised of unemploy_rate and month.
monthly_rate <- data.frame(
  unemploy_rate = unemploy_rate,
  month = month
)

# d. How would you extract the unemployment rate for March?
monthly_rate$unemploy_rate[monthly_rate$month == "Mar"]

# e. Extract only those months where unemployment was below 7.5%.
monthly_rate$month[monthly_rate$unemploy_rate < 7.5]