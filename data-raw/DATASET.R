library(tidyverse)
Papers <- tibble(text = readLines("pg18.txt"))
title_author <- readr::read_csv("title_author.csv")
FederalistPapers <- Papers |>
  mutate(
    line_number = row_number(),
    paper = cumsum(
      str_detect(
        text, 
        regex("^THE FEDERALIST",
        ignore_case = TRUE)
      )
    )
  )|>
  group_by(paper) |>
  mutate(line_number = line_number - first(line_number) + 1) |>
  ungroup() |>
  mutate(roman_number = as.roman(paper)) |>
  left_join(title_author)
glimpse(FederalistPapers)
usethis::use_data(FederalistPapers)
