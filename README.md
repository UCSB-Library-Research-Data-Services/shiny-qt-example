[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.17065585.svg)](https://doi.org/10.5281/zenodo.17065585)

# Developing a reproducible Shiny app

Example Shiny application adopting the recommendations of "Ten Quick Tips for Developing a Reproducible Shiny Application", Brun et al, 2025, PLOS Computational Biology.

In this example, we are reusing the [Faithful Shiny app example](https://shiny.posit.co/r/gallery/start-simple/faithful/) provided as part of the R ***shiny*** package. This Shiny application displays eruption duration in minutes for the Old Faithful geyser.

## Tips demonstrated

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
    
## How to run this Shiny app

1. Clone this repository and run at the R console: `shiny::runApp()`
2. At the R console run: `shiny::runGitHub(repo="shiny-qt-example", "UCSB-Library-Research-Data-Services")`

## File structure

This repository has the following file structure:

```bash
├── CITATION.cff
├── data
│   ├── faithful_data.csv
│   └── metadata.md
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

- `global.R`: Load libraries and check for existing data files
- `server.R`: server side functions of the Shiny app used to compute the histogram plot and other plot features
- `ui.R`: user interface of the Shiny app

### Virtual computing environment

This app uses ***renv*** to create a virtual environment

- `renv.lock`: list of the R packages used by the virtual environment
- `.Rprofile`: ensures that the library is used every time you open that project
- `renv/activate.R`: R script sourced by `.Rprofile` to activate the virtual environment
- `renv/settings.json`: virtual environment settings

### Data

- `faithful_data.csv`: CSV file version of the faithful data from the datasets R package
- `metadata.md`: metadata information about faithful_data.csv

## References

The underlying data is available as part of R package ***datasets***. The version used is distributed with R 4.5.0. This version is a simplification
of the original data collected by Azzalini, A. and Bowman, A. W. (1990). See `metadata.md` in the `data` directory for more information.

How to add a DOI to your GitHub Repo using Zenodo: <https://docs.github.com/en/repositories/archiving-a-github-repository/referencing-and-citing-content>

Cite this work as: Brun, J., Janée, G., & Curty, R. G. (2025). Example Shiny application adopting the recommendations from "Ten Quick Tips for Developing a Reproducible Shiny Application" [Computer software]. <https://github.com/UCSB-Library-Research-Data-Services/shiny-qt-examples>
