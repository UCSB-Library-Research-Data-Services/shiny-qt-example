library(shiny)
library(readr)

data_path <- "data"
csv_file <- file.path(data_path, "faithful_data.csv")

# Below is an example of employing a local cache... not necessary in this case,
# but useful if more processing is involved in preparing the data.

cache_file <- file.path(data_path, "cache.Rdata")

if (file.exists(cache_file) && file.info(cache_file)$mtime > file.info(csv_file)$mtime) {
  load(cache_file)
} else {
  old_faithful <- read_csv(csv_file)
  save(old_faithful, file=cache_file)
}
