
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  h2("Google Visualizations Motion Charts")
  ,p("This demo shows how country level data can be accessed from the World Bank via their API and displayed with a Motion Chart.")
  ,p("Click some buttons to make it move!")

  # Sidebar with a slider input for number of bins
  ,fluidPage(
    htmlOutput("wb")    
    )
  
))
