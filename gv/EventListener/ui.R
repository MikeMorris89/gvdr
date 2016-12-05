
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Google Visualization API"),

  # Sidebar with a slider input for number of bins
  tabsetPanel(
    tabPanel("Country GDP from wikipedia", htmlOutput("p1")),
    tabPanel("GDP Org Chart by continent", htmlOutput("p2")),
    tabPanel("GDP Bar Chart", htmlOutput("p3")),
    tabPanel("Population table", htmlOutput("p4"))
    
  )
))
