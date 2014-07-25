
library(shiny)
shinyServer(
  function(input, output) {
    x <- reactive({iris[[input$xvariable]]})
    y <- reactive({iris[[input$yvariable]]})
    
    lmout <- reactive({lm(x() ~ y())})
    
    output$plotout <- renderPlot({
      plot(x(), y(), col=iris$Species, 
           xlab=input$xvariable, ylab=input$yvariable, pch=19)
      abline(lmout())
      legend("topright", inset=0.01, c("setosa", "versicolor", "virginica"), pch=19, 
             col=c("black", "red", "green"), title="Species")
      
      
    })
    output$lmsummary <- renderText({summary(lmout())})
  }
)
