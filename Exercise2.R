install.packages("dplyr")
library("dplyr")
install.packages("stringr")
library("stringr")

df_titanic <- read.csv("C:/Users/mkk/Documents/SpringBoard/Exercise/titanic/titanic_original.csv",na.strings = c("",NA))


df_titanic[is.na(df_titanic$embarked),11] <-"S"

df_titanic[is.na(df_titanic$age),5] <- mean(df_titanic[!is.na(df_titanic$age),5])

temp_df_titanic<- df_titanic%>% mutate(has_cabin=1) #Adding column to store if cabin has number or not with default of 1 i.e every cabin has been number
temp_df_titanic[is.na(temp_df_titanic$cabin),"has_cabin"] <- 0 #update has_cabin for the cabin which has NA value

print(df_titanic[is.na(df_titanic$age),5])
View(df_titanic)
View(temp_df_titanic)
print(mean(df_titanic$age))      


