install.packages('tidyverse')
library(tidyverse)

glimpse(starwars)
view(starwars)


remove_NA<- starwars %>%
  (na.rm= "True") %>%
  view(starwars)


##Using the pipe funtion in dplyr to select, fiter and mutate of variables
selected<- starwars %>%
  select(name, height, skin_color, birth_year, sex, vehicles) %>%
  filter(skin_color== 'dark') %>%
  mutate(sex_binary= ifelse(sex=="male", 1, 0)) %>%
  view()

## Dealing with  missing values using the airquality data set

data("airquality")   ## this will load the dataset
view(airquality)

is.na(airquality) ##cheking for presence of missing values

which(is.na(airquality))

sum(is.na(airquality)) ##this will give the total count of missing

na.omit(airquality)   ## I'm ommiting the rows that has missing values in them

New_airquality<- na.omit(airquality)
New_airquality

##another way is to take the mean of the columns with NA and replace it with the mean     ####
# this is more effecient as data would not be lost as compared ommiting the NA

Mean_airquality<- airquality %>%
  summarise(
    mean( Ozone, na.rm=TRUE),
            mean(Solar.R, na.rm=TRUE)
    ) 
  
view(Mean_airquality)


##Replacing for the ozone column

airquality$Ozone[is.na(airquality$Ozone)] <- mean(airquality$Ozone, na.rm=TRUE)
airquality  

##replacing for solar.R column
airquality$Solar.R[is.na(airquality$Solar.R)] <- mean(airquality$Solar.R, na.rm=T)
airquality


##to replace all columns

for (i in 1:5) {
  df[is.na(df[,i]), i] <- mean(df[,i], na.rm=TRUE)
  
}



