library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Heart disease prediction"),
  mainPanel(
    h3("Result"),
    plotOutput("plotout"),
    textOutput("lmsummary")
  ),
  sidebarPanel(
    h3("Choose the X and Y axis variables"),
    p(HTML("This webapp plot the <a href='http://stat.ethz.ch/R-manual/R-devel/library/datasets/html/iris.html'>iris dataset</a>
      dataset provided by R.")),
    p(HTML("You can choose the X and Y variable and the plotting on the left will be updated.")),
    selectInput("xvariable", "X axis variable:",
                list("Sepal length" = "Sepal.Length", 
                     "Sepal width" = "Sepal.Width", 
                     "Petal length" = "Petal.Length", 
                     "Petal width" = "Petal.Width")),
    selectInput("yvariable", "Y axis variable:",
                list("Sepal length" = "Sepal.Length", 
                     "Sepal width" = "Sepal.Width", 
                     "Petal length" = "Petal.Length", 
                     "Petal width" = "Petal.Width"))
  )
))