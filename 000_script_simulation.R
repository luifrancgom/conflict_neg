library(tidyverse)
library(tidymodels)

# Within groups
tibble(role = c("A", "B", "C")) %>% 
  rep_sample_n(size = 3, 
               replace = FALSE, 
               reps = 1)

# Between groups
tibble(role = c("A", "B", "C")) %>% 
  rep_sample_n(size = 3, 
               replace = FALSE, 
               reps = 5) %>%
  ungroup() %>%  
  select(role) %>% 
  View()
