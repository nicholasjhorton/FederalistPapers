library(tidyverse)
Papers <- tibble(text = readLines("pg18.txt"))
FederalistPapers <- Papers |>
  mutate(
    linenumber = row_number(),
    paper = cumsum(
      str_detect(
        text, 
        regex("^THE FEDERALIST",
        ignore_case = TRUE)
      )
    )
  )|>
  group_by(paper) |>
  mutate(linenumber = linenumber - first(linenumber) + 1) |>
  ungroup() |>
  mutate(roman_number = as.roman(paper))
usethis::use_data(FederalistPapers)
