library(shiny)
library(readr)

data_path <- "data"
csv_old_faithful <- "faithful_data.csv"

old_faithful <- read_csv(file.path(data_path, csv_old_faithful))
