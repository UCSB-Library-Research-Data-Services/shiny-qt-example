# This code was adapted from the Shiny R package example: 
# https://github.com/rstudio/shiny-examples/tree/main/083-front-page


function(input, output) {
  # Main plot
  output$main_plot <- renderPlot({
    # Histogram plot
    hist(old_faithful$eruptions,
      probability = TRUE,
      breaks = as.numeric(input$n_breaks),
      xlab = "Duration (minutes)",
      main = "Geyser eruption duration")
    
    # Adds individual observations to plot
    if (input$individual_obs) {
      rug(old_faithful$eruptions)
    }
    
    # Adds density estimates to plot
    if (input$density) {
      dens <- density(old_faithful$eruptions,
          adjust = input$bw_adjust)
      lines(dens, col = "blue")
    }

  }) # end of main plot
}
