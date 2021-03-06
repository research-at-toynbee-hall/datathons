#----------------------------------------------
# Example Script
#----------------------------------------------
# Load Libraries
library(tidyverse)
library(viridis)

crime_long <- read_csv("datasets/datathon-2019-04-24/crime_in_london/cleaned/long_london_crime_2017-2019.csv")
#----------------------------------------------
# Import Data
crime_long %>%
  filter(LookUp_BoroughName == "Tower Hamlets") %>%
   filter(WardName == "Whitechapel" | WardName == "Weavers" |
             WardName == "Spitalfields and Banglatown" |
             WardName == "Bethnal Green" | WardName == "Mile End"|
           WardName == "Limehouse") %>%
   filter(MajorText == "Theft" | MajorText == "Burglary") %>%
  group_by(year_month, WardName, MajorText) %>%
  summarise(count = sum(count)) %>%
  mutate(zCount = scale(count)) %>% 
  ggplot(aes(x = year_month, 
             y = count, 
             color = MajorText,
             group = MajorText)) +
  geom_point(stat = 'identity') +
  geom_line() +
  theme_minimal() + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
  facet_wrap(~WardName) +
  labs(title = "Select Crime Rates in Tower Hamlets, March 2017 -- February, 2019",
       y = "Number of Recorded Crimes",
       x = "Year and Month",
       color = "Type of Crime",
       subtitle = "Public Data obtained via data.london.gov.uk",
       caption = "Source: https://data.london.gov.uk/dataset/recorded_crime_summary") +
  scale_color_viridis(discrete = TRUE,begin = .2,end = .8) -> example

example

ggsave(filename = "Examples/Example_Plot.png",plot = example)

#-----------------------------------------------------------------
# MIT 
#-----------------------------------------------------------------

# Copyright (c) 2019 David John Baker
#   
#   Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#   
#   The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
