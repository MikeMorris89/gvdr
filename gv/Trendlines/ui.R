
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Google Visualizations Trendlines."),

  # Sidebar with a slider input for number of bins
  tabsetPanel(
    tabPanel("Scatter plot",htmlOutput("scatter"))
    ,tabPanel("Scatter plot with Trendline",htmlOutput("Scatterexponential"))
    ,tabPanel("ColumnChart",htmlOutput("ColumnChart"))
    ,tabPanel("Column Chart with Trendline",htmlOutput("ColumnChartTrendline"))
    )
  )
)
