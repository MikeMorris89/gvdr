
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#



shinyServer(function(input, output) {

  output$wb <- renderGvis({
    gvisMotionChart(WorldBank,
                    idvar="country", timevar="year",
                    xvar="life.expectancy", yvar="fertility.rate",
                    sizevar="population", colorvar="region", 
                    options=list(width=700, height=600),
                    chartid="WorldBank")

  })
  

  

})
