##Messing with tidyverse i.e dplyr

library("tidyverse")
install.packages("gapminder")
library(gapminder)

as_tibble(gapminder)               #It shows the data in a traditional data frame

my_data<- gapminder %>% 
  view()

summary(my_data$lifeExp)  ###for the summary of the lifeExp column

head(gapminder, n=20) ##this will give the first 20 rows of the dataset

## filtering datasets using %>% 

my_data1<- gapminder %>% 
  filter(country == "Ghana") %>%   ##This filters one country out 
  view()


my_data2<- gapminder %>% 
  filter(country %in% c("Ghana", "Nigeria", "Japan")) %>% ##This filters more countries
  view()

my_gap<- gapminder %>% 
  mutate(gdp= pop * gdpPercap, lifeExplog= log(lifeExp)) %>% 
  view()                  ##here i created new columns gdp and lifeExplog using the mutate fnx

my_gap1<- gapminder %>% 
  select(yr=year, longivity=lifeExp, everything()) %>% 
  view()


my_gap2<- gapminder %>% 
  arrange(year) %>% 
  view()








