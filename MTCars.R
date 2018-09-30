#Data Analytics using Dplyr
library(dplyr)
  dplyr::filter(mtcars, mpg>25 & am==1)
  ?dplyr
  ?mtcars

filter(mtcars, mpg>25 & am==1)

mtcars %>% filter(mpg>25 & am==1)
mtcars %>% filter(mpg>25 & am==1) %>% arrange (wt) %>% summarise(n())
mtcars %>% filter(mpg>25 & am==1) %>% arrange (wt) %>% count()
count(mtcars)

mtcars %>% group_by(am) %>% summarise(mean(mpg)) #grouping by transmission and then finding the mean of both groups

mtcars %>% group_by(gear) %>% summarise(mean(mpg))
  mtcars
  pull(mtcars, var=-1) #puts the last column as a vector ; last because -1
  select(mtcars, starts_with("a")) #selects those columns that start with a
  mutate(mtcars, gpm=1/mpg)
  transmute(mtcars, gpm=1/mpg)
  mutate_all(mtcars, funs(log(.),log2(.)))
  mutate_at(mtcars, vars(gear), funs(log(.)))
slice(mtcars, 10:14)
