#Load Packages
library(pacman)
if(!require(pacman)) install.packages("pacman")
pacman::p_load(tidyverse,
              plotly,
              reactable,
              bslib,
              bsicons,
              shiny,
              gapminder,
              rnaturalearth,
              countrycode,
              htmltools,
              rgeoboundaries,
              outbreaks,
              here)

#Summary of numbers of hours watched by Marital status
tv_hours_tabulation <-  
gss_cat %>% 
  filter(age<30) %>% 
   group_by(marital) %>% 
     summarize(mean_tv_hours = mean(tvhours,na.rm=T))

write_csv(tv_hours_tabulation,here("Tv_hours_by_marital.csv"))
 
 
  
