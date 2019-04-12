#----------------------------------------------------------
# Clean Youth Homelessness
#----------------------------------------------------------
library(tidyverse)
#----------------------------------------------------------

youth_homeless <- read_csv("datasets/datathon-2019-04-24/youth_homelessness/raw/Copy of Databank_LAs_2012-13_2017-18.csv")

youth_homeless %>%
  select(year) %>%
  group_by(year) %>%
  summarise(n = n())

youth_homeless$start_year <- str_remove_all(string = youth_homeless$year,pattern = "\\/.*$")

write_csv(x = youth_homeless, path = "datasets/datathon-2019-04-24/youth_homelessness/clean/centrepoint_clean.csv")
