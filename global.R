library(shiny)
library(readr)

data_path <- file.path("data", "processed")
csv_file <- file.path(data_path, "old_faithful_waiting_time.csv")

# Below is an example of employing a local cache... not necessary in this case,
# but useful if more processing is involved in preparing the data.

cache_file <- file.path(data_path, "cache.Rdata")

if (file.exists(cache_file) && file.info(cache_file)$mtime > file.info(csv_file)$mtime) {
  load(cache_file)
} else {
  data_faithful_erupt <- read_csv(csv_file)
  save(data_faithful_erupt, file=cache_file)
}
