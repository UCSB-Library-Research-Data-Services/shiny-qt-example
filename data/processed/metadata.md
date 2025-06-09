# Old Faithful Geyser Binary Eruption Data (April 2007- October 2008)



## Description of the data 

Yellowstone Upper Basin Geyser Binary Eruption Data for the Old Faithful (April 2007- October 2008). This data set contains binary eruption data for the  Old Faithful geyser over 19 consecutive months (April 2007- October 2008) at a sampling interval of 6 minutes. 

The original data have been processed to compute the waiting time between eruptions in minutes. Note that waiting times above 500 minutes have been arbitrarily removed to help with the Shiny app visualization that this dataset is used with to demonstrate the ten tips of "10 Quick Tips for Developing a Reproducible Shiny Application", Brun et al, 2025, PLOS Computational Biology.


## File structure

The CSV file `old_faithful_waiting_time.csv` contains the following variables:

* t: time formatted as in the original data
* time: formatted with the R POSIX format
* next_erupt_time: time of the next eruption in the R POSIX format
* wait_time_minutes: time difference in minutes between "time" and "next_erupt_time" columns

## Associated code

The code used to process the original data can be found here: <https://github.com/UCSB-Library-Research-Data-Services/shiny-qt-example>


## Source

This dataset has been derived from Thompson, Peter; Staniczenko, Phillip; Fagan, William (2024). Yellowstone Upper Basin Geyser binary eruption data (April 2007- October 2008; revised) [Dataset]. Dryad. <https://doi.org/10.5061/dryad.s1rn8pkbv>