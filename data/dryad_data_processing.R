library(dplyr)
library(readr)
library(lubridate)

# file path
data_raw <- file.path("data", "raw")
data_processed <- file.path("data", "procesed")

# Import raw data
dryad_data <- read_csv(file.path(data_raw, "bin_eruption.csv"))

# Select only data for the Old Faithful and convert time to POSIX format
data_faithful <- dryad_data |>
  select(t, OF) |>
  mutate(time = ymd_hm(t))

# Drop 0 and compute time difference between eruptions
data_faithful_erupt <-  data_faithful |>
  filter(OF==1) |>
  mutate(next_erupt = lag(OF),
         next_erupt_time = lag(time),
         wait_time_minutes = as.numeric(time - next_erupt_time)) |>
  filter(wait_time_minutes < 500) # Arbitrarily remove "outliers" for better visualization

# write the csv file for the app
write_csv(data_faithful_erupt, file.path(data_processed, "old_faithful_waiting_time.csv"))
