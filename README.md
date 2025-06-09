## Developing a reproducible Shiny app

Example Shiny application adopting the recommendations of "10 Quick Tips for Developing a Reproducible Shiny Application", Brun et al, 2025, PLOS Computational Biology.

In this example, we are reusing the Faithful Shiny app example (<https://shiny.posit.co/r/gallery/start-simple/faithful/>) provided as part of the R `shiny` package. This Shiny application displays eruption data for the Old Faithful geyser.

Tips demonstrated:

-   Set up your computing environment
    -   Use git and GitHub
    -   Use `renv` to record package versions
    -   Record the output of `sessionInfo()`
-   Document and develop incrementally
    -   Comment UI elements
-   Make your Shiny application portable and easy to maintain
    -   Organize code and data
    -   Use relative paths and `file.path`
-   Preprocess and cache data for performance
    -   Cache processed data in a local file
-   Make underlying data accessible
    -   Cite the original data
-   License code and data appropriately
    -   Add a LICENSE file
    -   Respect the license of the original data
-   Make you data and source code citable
    -   Add README and CITATION.cff files
-   Publish your app
    -   Publish on shinyapps.io and archive in Zenodo

The underlying data is available as part of R package X. The original source is...

Cite this work as: Brun, J., Janée, G., & Curty, R. G. (2025). Example Shiny application adopting the recommendations from "10 Quick Tips for Developing a Reproducible Shiny Application" [Computer software]. <https://github.com/UCSB-Library-Research-Data-Services/shiny-qt-examples>
