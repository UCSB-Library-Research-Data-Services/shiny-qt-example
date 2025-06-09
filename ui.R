bootstrapPage(

  selectInput( # bins selector
      inputId = "n_breaks",
      label = "Number of bins in histogram (approximate):",
      choices = c(10, 20, 35, 50),
      selected = 20
  ), # end of bins selector

  checkboxInput( # individual checkbox
      inputId = "individual_obs",
      label = strong("Show individual observations"),
      value = FALSE
  ), # end of individual checkbox

  checkboxInput( # density checkbox
      inputId = "density",
      label = strong("Show density estimate"),
      value = FALSE
  ), # end of density checkbox

  # main plot area
  plotOutput(outputId = "main_plot", height = "300px"),

  # Display this only if the density is shown
  conditionalPanel(condition = "input.density == true",
    sliderInput( # bandwidth slider
        inputId = "bw_adjust",
        label = "Bandwidth adjustment:",
        min = 0.2, max = 2, value = 1, step = 0.2
    ) # end of bandwidth slider
  )

)
