# Developing a reproducible Shiny app

Example Shiny application adopting the recommendations of "Ten Quick Tips for Developing a Reproducible Shiny Application", Brun et al, 2025, PLOS Computational Biology.

In this example, we are reusing the Faithful Shiny app example (<https://shiny.posit.co/r/gallery/start-simple/faithful/>) provided as part of the R `shiny` package. This Shiny application displays eruption data for the Old Faithful geyser.

## Tips demonstrated:

-   Set up your computing environment
    -   Use git and GitHub
    -   Use `renv` to record package versions
    -   Record the output of `sessionInfo()`
-   Document and develop incrementally
    -   Comment UI elements
-   Make your Shiny application modular and portable
    -   Organize code and data
    -   Use relative paths and `file.path`
-   Preprocess and cache data for performance
    -   Cache remotely-accessed and processed data in a local file
-   Make underlying data accessible
    -   Cite the original data
-   License code and data appropriately
    -   Add a LICENSE file
    -   Respect the license of the original data
-   Make your data and source code citable
    -   Add a suggested citation to the README
    -   Add a CITATION.cff file
-   Share your app
    -   Publish on shinyapps.io and archive in Zenodo
    
## How to run this app

1. Clone this repository and run at the R console: `shiny::runApp()`
2. At the R console run: `shiny::runGitHub(repo="shiny-qt-example", "UCSB-Library-Research-Data-Services")`

## File structure

This repository has the following file structure:

```bash
├── CITATION.cff
├── data
│   ├── dryad_data_processing.R
│   ├── processed
│   └── raw
├── global.R
├── LICENSE
├── README.md
├── renv
│   ├── activate.R
│   ├── library
│   ├── settings.json
│   └── staging
├── renv.lock
├── server.R
├── sessionInfo.txt
├── shiny-qt-example.Rproj
└── ui.R
```

### Shiny app

- global.R: Load libraries and check for existing data files
- server.R: server side functions of the Shiny app used to compute the histogram plot and other plot features
- ui.R: user interface of the Shiny app

### Data

- dryad_data_processing.R: R script processing the raw data into a simplified file to be used as input file for the Shiny app

#### Raw data

`data/raw`

- bin_eruption.csv: data about the Yellowstone Upper Basin Geyser binary eruption data <https://doi.org/10.5061/dryad.s1rn8pkbv>
- README.md: metadata for bin_eruption.csv
- data_license_cc0.txt: CC0 License for bin_eruption.csv  <https://creativecommons.org/publicdomain/zero/1.0/>
- cache.Rdata: Rdata version of bin_eruption.csv

#### Processed data

`data/processed`

- old_faithful_waiting_time.csv: data measuring the waiting time in minutes between eruptions of the Old Faithful from April 2007- October 2008
- metadata.md: metadata for old_faithful_waiting_time.csv

### Virtual computing environment

This app uses `renv` to create a virtual environment

- renv.lock: list of the R packages used by the virtual environment
- .Rprofile: ensures that the library is used every time you open that project
- renv/activate.R: R script sourced by .Rprofile to activate the virtual environment
- renv/settings.json: virtual environment settings
- renv/library: R libraries used by the virtual environment



## References

The underlying data is from: Thompson, Peter; Staniczenko, Phillip; Fagan, William (2024). Yellowstone Upper Basin Geyser binary eruption data (April 2007- October 2008; revised) [Dataset]. Dryad. <https://doi.org/10.5061/dryad.s1rn8pkbv>

Cite this work as: Brun, J., Janée, G., & Curty, R. G. (2025). Example Shiny application adopting the recommendations from "Ten Quick Tips for Developing a Reproducible Shiny Application" [Computer software]. <https://github.com/UCSB-Library-Research-Data-Services/shiny-qt-examples>
