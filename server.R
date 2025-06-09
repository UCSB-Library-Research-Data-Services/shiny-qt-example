function(input, output) {

  output$main_plot <- renderPlot({

    hist(old_faithful$eruptions,
      probability = TRUE,
      breaks = as.numeric(input$n_breaks),
      xlab = "Duration (minutes)",
      main = "Geyser eruption duration")

    if (input$individual_obs) {
      rug(old_faithful$eruptions)
    }

    if (input$density) {
      dens <- density(old_faithful$eruptions,
          adjust = input$bw_adjust)
      lines(dens, col = "blue")
    }

  })
}
