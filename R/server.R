server <- function(input, output, session) {
  points <- reactive({
    n <- input$n
    dx <- input$x
    dy <- input$y
    arguments[[dx]]$n <- n
    arguments[[dy]]$n <- n
    data <- data.table(
      x = do.call(
        distributions[[dx]],
        arguments[[dx]]
      ),
      y = do.call(
        distributions[[dy]],
        arguments[[dy]]
      )
    )
    data[, .(n = .N), by = .(x, y)]
  })
  
  output$plot <- renderPlotly({
    points <- points()
    p <- ggplot(points, aes(x, y, size = n, text = paste0(
      "x = ", round(x, 4), "<br>",
      "y = ", round(y, 4), "<br>",
      "n = ", n
    ))) +
      geom_point() +
      theme_minimal()
    p <- ggplotly(p, tooltip = "text")
    p
  })
}