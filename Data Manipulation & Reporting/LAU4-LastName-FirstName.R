# 1 Libraries that can import CSV and others

# a default R utils package contains read.table which contains read.csv()

print("read.csv() from utils")
csv1 <- utils::read.csv("testdata.csv")
csv1

# b package readr is newer, faster, and auto converts file to data.frame
# https://www.pauloldham.net/importing-csv-files-into-r/#reading-in-a-file-using-read.table-utils-package

install.packages("readr")
library(readr)
print("read_csv() from readr")
csv2 <- readr::read_csv("testdata.csv")
csv2

# c package data.table contains fread which is faster
# https://www.r-bloggers.com/2021/12/import-csv-files-into-r-step-by-step-guide/

install.packages("data.table")
library(data.table)
print("fread() from data.table")
csv3 <- data.table::fread("testdata.csv")
csv3

# d read.delim()
csv4 <- utils::read.delim("testdata.csv", sep=",")
csv4


#Becoming Visual Exercise 6.1
# 1 Getting 

# 1 Getting to know the data
# a. Import the data (http://becomingvisual.com/rfundamentals/summer_winter_olympics.csv)
medals <- readr::read_csv("http://becomingvisual.com/rfundamentals/summer_winter_olympics.csv")

# b. View the data
medals

# c. Look at column names
summary(medals)
names(medals)

# d. Look at dimension of data (rows and columns)
dim(medals)

# 2. Dealing with Data
# a. Look at the column names and change names to more meaningful names.
names(medals) = c("NA", "country", "s_games", "s_gold", "s_silver", "s_bronze", "s_total", "w_games", "w_gold", "w_silver", "w_bronze", "w_total", "sw_games", "sw_gold", "sw_silver", "sw_bronze", "sw_total")
attach(medals)
# b. The data represent, in order:
#   b.1. country
#   b.2. number of summer games played, gold, silver, bronze, total,
#   b.3 number of winter games played, gold, silver, bronze and total, total
#   b.4 total (Winter + Summer) games, gold, silver, bronze, total
# 3. Summary
# a. use table() to find frequency of total summer games played
table(s_games)
# b. explore the data with other variables
table(sw_total)
# 4. Graphs
# a. do histogram of summer games (total)
hist(as.numeric(s_games),main="Summer Games")
# b. do histogram of winter games (total)
hist(as.numeric(w_games), main="Winter Games")
# c. put above two histograms on one page
par(mfrow=c(1,2))
hist(as.numeric(s_games),main="Summer Games")
hist(as.numeric(w_games), main="Winter Games")
# d. do two histograms on one page: total summer, total winter medals won
par(mfrow=c(1,2))
hist(as.numeric(s_total),main="Summer Medals Won")
hist(as.numeric(w_total), main="Winter Medals Win")
# e. is there a correlation between number of medals given out in winter and summer? (do plot)
par(mfrow=c(1,1))
plot(s_total, w_total, xlab="Summer Medals", ylab="Winter Medals", main="Summer vs Winter Medals")
# f. how about number of games each country competes in. Is there correlation between winter and summer?
plot(s_games, w_games, xlab="Summer Games", ylab="Winter Games", main="Summer vs Winter Games")
# g. look at distribution of each of the types of medals, by season (6 histograms on one page)
par(mfrow=c(2,3))
bins <- 20
hist(s_gold, breaks=bins, main="Summer Gold Medals")
hist(s_silver, breaks=bins, main="Summer Silver Medals")
hist(s_bronze, breaks=bins, main="Summer Bronze Medals")
hist(w_gold, breaks=bins, main="Winter Gold Medals")
hist(w_silver, breaks=bins, main="Winter Gold Medals")
hist(w_bronze, breaks=bins, main="Winter Gold Medals")
# h. redo g with different number of bins (10 instead of 20)
par(mfrow=c(2,3))
bins <- 10
hist(s_gold, breaks=bins, main="Summer Gold Medals")
hist(s_silver, breaks=bins, main="Summer Silver Medals")
hist(s_bronze, breaks=bins, main="Summer Bronze Medals")
hist(w_gold, breaks=bins, main="Winter Gold Medals")
hist(w_silver, breaks=bins, main="Winter Silver Medals")
hist(w_bronze, breaks=bins, main="Winter Bronze Medals")
# i. explore data on your own
par(mfrow=c(1,1))
hist(sw_games, main="Amount of Games Played")

#Becoming Visual Exercise 6.2

# Merge the columns for the year 2016 for GDP, Life Expectancy, and Employment into a new data frame and clean-up the new table.
gdp <- readr::read_csv("http://becomingvisual.com/rfundamentals/gdp.csv")
life_expectancy <- readr::read_csv("http://becomingvisual.com/rfundamentals/life_expectancy.csv")
employment <- readr::read_csv("http://becomingvisual.com/rfundamentals/employment.csv")

countries_2016 <- data.frame(gdp$"Country Name", gdp$"2016", life_expectancy$"2016", employment$"2016")

# Rename the appropriate columns to "country", "gdp", "life_expectancy", and "employment".
names(countries_2016) <- c("country", "gdp", "life_expectancy", "employment")

# Convert the employment number to percentages by dividing by 100
countries_2016$employment <- countries_2016$employment / 100

# Then round life expectancy to zero decimals and employment to two decimals
countries_2016$life_expectancy <- round(countries_2016$life_expectancy, digits = 0)
countries_2016$employment <- round(countries_2016$employment, digits = 2)

# Create a frequency table for each variable
gdp_ft <- table(countries_2016$gdp)
life_expectancy_ft <- table(countries_2016$life_expectancy)
employment_ft <- table(countries_2016$employment)

# Draw histograms for each variable
hist(countries_2016$gdp)
hist(countries_2016$life_expectancy)
hist(countries_2016$employment)

#becoming Visual Assignment 6
data <- readr::read_csv("http://becomingvisual.com/rfundamentals/undergrad.csv")

# Create ordered factor variables
data$`The following tools are important to my future career. [Excel]` <-  factor(data$`The following tools are important to my future career. [Excel]`, ordered = TRUE, levels = c("Strongly Disagree", "Disagree", "Somewhat disagree", "Neither agree or disagree", "Somewhat agree", "Agree", "Strongly Agree" ))
data$`The following tools are important to my future career. [Statistics]` <- factor(data$`The following tools are important to my future career. [Statistics]`, ordered = TRUE, levels = c("Strongly Disagree", "Disagree", "Somewhat disagree", "Neither agree or disagree", "Somewhat agree", "Agree", "Strongly Agree" ))
data$`The following tools are important to my future career. [A programming language]` <- factor(data$`The following tools are important to my future career. [A programming language]`, ordered = TRUE, levels = c("Strongly Disagree", "Disagree", "Somewhat disagree", "Neither agree or disagree", "Somewhat agree", "Agree", "Strongly Agree" ))
# Draw histograms for the ordered factor variables
barplot(table(data$`The following tools are important to my future career. [Excel]`))
barplot(table(data$`The following tools are important to my future career. [Statistics]`))
barplot(table(data$`The following tools are important to my future career. [A programming language]`))

# For loop vs While loop vs Apply functions

# For loop
numbers <- c(1, 2, 3, 4, 5)
squared_numbers <- numeric(length(numbers))

for (i in seq_along(numbers)) {
  squared_numbers[i] <- numbers[i] ^ 2
}

print(squared_numbers)
print("For loops are preferred if you want to iterate over a sequence or set of items. It is often also used when the amount is fixed.")

# While loop
numbers <- c(1, 2, 3, 4, 5)
squared_numbers <- numeric(length(numbers))
i <- 1

while (i <= length(numbers)) {
  squared_numbers[i] <- numbers[i] ^ 2
  i <- i + 1
}

print(squared_numbers)
print("While loops can be complicated if trying to replicate For loops since you will have to declare variables and stop conditions. While loops excel when the end state is known but is determined on the fly (e.g. stop when >100).")

# Apply function
numbers <- c(1, 2, 3, 4, 5)
squared_numbers <- lapply(numbers, function(x) x^2)

print(unlist(squared_numbers))
print("Apply functions are the most elegant way of applying a standard function to each member of a list or data structure. This is often preferred since it is straightforward and easily understandable but can be limited if you prefer to have other calculations in the loop.")


#Becoming Visual Exercise 7.1
utils::head(attitude)
summary(attitude)

# make function
getSummary <- function(data){
  for(i in 1:ncol(data)){
    print(names(data[i]))
    print(paste("mean:", mean(data[,i])))
    print(paste("median:", median(data[,i])))
    print(paste("min:", min(data[,i])))
    print(paste("max:", max(data[,i])))
    print("")
  }
}
# run function
getSummary(attitude)

#Becoming Visual Exercise 7.2
# import data
airbnb <- readr::read_csv("http://becomingvisual.com/rfundamentals/airbnb.csv")

# 1. make function: Create a new function called checkforna that checks to see if a give value is NA and prints out the row number and column name from the following data set: http://becomingvisual.com/rfundamentals/airbnb.csv
checkforna <- function(data){
  columns <- names(attitude)
  for(i in 1:ncol(data)){
    for(j in 1:nrow(data)){
      if(is.na(data[j,i])){
        print(paste("Row",j,", Column", columns[i]))
      }
    }
  }
}
checkforna(airbnb)

# 2. Using a for loop and if / else statement, count the number of AirBnbs that are in a particular neighborhood the NYU area using the Greenwich Village and West Village neighborhoods.

count <- 0
for(i in 1:nrow(airbnb)){
  if(airbnb$neighbourhood[i]=="Greenwich Village" | airbnb$neighbourhood[i]=="West Village"){
    count <- count + 1
  }
}
print(paste("Number of AirBnbs in Greenwich Village and West Village neighborhoods:",count))


#Becoming Visual Assignment 7
# import data
airbnb <- readr::read_csv("http://becomingvisual.com/rfundamentals/airbnb.csv")

# 1.Create a set of functions that compute specific metrics by neighborhood:
#   a. average_number_of_reviews
average_number_of_reviews <- function(data, neighbourhood){
  count <- 0
  mySum <- 0
  for(j in 1:nrow(data)){
    if(data[j,"neighbourhood"][[1]] == neighbourhood){
      count <- count + 1
      mySum <- mySum + data[j, "number_of_reviews"][[1]]
    }
    
  }
  return(mySum/count)
}
average_number_of_reviews(airbnb, "Greenpoint")


#   b. average_price
average_price <- function(data, neighbourhood){
  count <- 0
  mySum <- 0
  for(j in 1:nrow(data)){
    if(data[j,"neighbourhood"][[1]] == neighbourhood){
      count <- count + 1
      mySum <- mySum + data[j, "price"][[1]]
    }
    
  }
  return(mySum/count)
}
average_price(airbnb, "Greenpoint")

# per neighbourhood
number_reviews_and_price_per_neighbourhood <- function(data){
  neighbourhoods <- unique(data$neighbourhood)
  for(i in neighbourhoods){
    print(i)
    print(paste("Average Number of Reviews:", average_number_of_reviews(data,i)))
    print(paste("Average Price:", average_price(data,i)))
    print("")
  }
}
number_reviews_and_price_per_neighbourhood(airbnb)

# 2.Use the functions created in part 1 to compute these metrics by room type and neighborhood.
average_number_of_reviews_room <- function(data, room_type){
  count <- 0
  mySum <- 0
  for(j in 1:nrow(data)){
    if(data[j,"room_type"][[1]] == room_type){
      count <- count + 1
      mySum <- mySum + data[j, "number_of_reviews"][[1]]
    }
    
  }
  return(mySum/count)
}


#   b. average_price
average_price_room <- function(data, room_type){
  count <- 0
  mySum <- 0
  for(j in 1:nrow(data)){
    if(data[j,"room_type"][[1]] == room_type){
      count <- count + 1
      mySum <- mySum + data[j, "price"][[1]]
    }
    
  }
  return(mySum/count)
}

number_reviews_and_price_per_room_type <- function(data){
  room_types <- unique(data$room_type)
  for(i in room_types){
    print(i)
    print(paste("Average Number of Reviews:", average_number_of_reviews_room(data,i)))
    print(paste("Average Price:", average_price_room(data,i)))
    print("")
  }
}
number_reviews_and_price_per_room_type(airbnb)


reviews_price_per_room_and_neighbourhood <- function(data){
  neighbourhoods <- unique(data$neighbourhood)
  room_types <- unique(data$room_type)
  reviewSum <- matrix(list(), nrow=length(neighbourhoods), ncol=length(room_types))
  priceSum <- matrix(list(), nrow=length(neighbourhoods), ncol=length(room_types))
  count <- matrix(list(), nrow=length(neighbourhoods), ncol=length(room_types))
  
  # initialize arrays
  i <- 0
  for(room_type in room_types){
    i <- i + 1
    j <- 0
    for(neighbourhood in neighbourhoods){
      j <- j + 1
      reviewSum[j,i] <- 0
      priceSum[j,i] <- 0
      count[j,i] <- 0
    }
  }
  print("Done initializing.")
  
  for(x in 1:100){#nrow(data)){
    i <- 0
    for(room_type in room_types){
      i <- i + 1
      j <- 0
      for(neighbourhood in neighbourhoods){
        j <- j + 1
        if(data[x,"neighbourhood"][[1]] == neighbourhood & data[x,"room_type"][[1]] == room_type){
          reviewSum[j,i] <- reviewSum[j,i][[1]] + data[x, "number_of_reviews"][[1]]
          priceSum[j,i] <- priceSum[j,i][[1]] + data[x, "price"][[1]]
          count[j,i] <- count[j,i][[1]] + 1
          }
      }
    }
  }
  i <- 0
  for(room_type in room_types){
    i <- i + 1
    j <- 0
    for(neighbourhood in neighbourhoods){
      j <- j + 1
      print(paste(neighbourhood, room_type))
      print(paste("Average Number of Reviews:", reviewSum[j,i][[1]]/count[j,i][[1]]))
      print(paste("Average Price:", priceSum[j,i][[1]]/count[j,i][[1]]))
      print("")
    }
  }
}
