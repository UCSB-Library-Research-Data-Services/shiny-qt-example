# This code was adapted from the Shiny R package example: 
# https://github.com/rstudio/shiny-examples/tree/main/083-front-page

function(input, output) {
  # Main plot
  output$main_plot <- renderPlot({
    # Histogram plot
    hist(data_faithful_erupt$wait_time_minutes,
      probability = TRUE,
      breaks = as.numeric(input$n_breaks),
      xlab = "Wating time (minutes)",
      main = "Geyser waiting time between eruptions")
    
    # Adds individual observations to plot
    if (input$individual_obs) {
      rug(data_faithful_erupt$wait_time_minutes)
    }
    
    # Adds density estimates to plot
    if (input$density) {
      dens <- density(data_faithful_erupt$wait_time_minutes,
          adjust = input$bw_adjust)
      lines(dens, col = "blue")
    }

  }) # end of main plot
}
