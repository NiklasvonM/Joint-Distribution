ui <- fluidPage(
  selectInput(
    "x",
    label = "distribution x-axis",
    choices = names(distributions),
    selected = "uniform"
  ),
  selectInput(
    "y",
    label = "distribution y-axis",
    choices = names(distributions),
    selected = "uniform"
  ),
  sliderInput(
    "n",
    label = "n observations",
    min = 1,
    max = 1000,
    value = 100
  ),
  plotlyOutput("plot")
)