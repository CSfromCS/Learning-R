# data set: https://data.cityofnewyork.us/Business/Federal-Stimulus-Data/ivix-m77e

# import csv file to data frame
DF_Yourname_fed_stimulus <- read.csv("mydata/Federal_Stimulus_Data.csv")

# check amount of rows and columns
dim(DF_Yourname_fed_stimulus)

# calculate sum of Payment.Value
sum(DF_Yourname_fed_stimulus$Payment.Value, na.rm=TRUE)

# calculate mean of Payment.value
mean(DF_Yourname_fed_stimulus$Payment.Value, na.rm=TRUE)

# create subset of data
library(dplyr)
# using dplyr and filter to extract subset with Project.Status = Completed 50% or more
DF_Yourname_fed_stimulus_Subset <- filter(DF_Yourname_fed_stimulus, Project.Status == "Completed 50% or more")

# check that the amount of subset rows is correct (4908 projects)
dim(DF_Yourname_fed_stimulus_Subset)