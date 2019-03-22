

# Function to check whether package is installed
is.installed <- function(mypkg){
  is.element(mypkg, installed.packages()[,1])
} 

# check if package "dplyr" is installed
if (!is.installed("dplyr")){
  install.packages("dplyr")
}


# check if package "stringr" is installed
if (!is.installed("stringr")){
  install.packages("stringr")
}


library("dplyr")
library("stringr")


#Load data into data frame, initialize all empty values to NA
df_titanic <- read.csv("C:/Users/mkk/Documents/SpringBoard/Exercise/titanic/titanic_original.csv",na.strings = c("",NA))

#Update empty embarked values with S
df_titanic[is.na(df_titanic$embarked),11] <-"S"

#update empty age values with mean
df_titanic[is.na(df_titanic$age),5] <- mean(df_titanic[!is.na(df_titanic$age),5])

temp_df_titanic<- df_titanic%>% mutate(has_cabin=1) #Adding column to store if cabin has number or not with default of 1 i.e every cabin has been number
temp_df_titanic[is.na(temp_df_titanic$cabin),"has_cabin"] <- 0 #update has_cabin for the cabin which has NA value



View(temp_df_titanic)



