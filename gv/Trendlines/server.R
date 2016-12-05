
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  output$scatter <- renderGvis({
    gvisScatterChart(women, options=list(trendlines="0"))
  })
  
  ## ---- ExponentialTrend ----
  output$Scatterexponential <- renderGvis({
    gvisScatterChart(women, options=list(
      trendlines="{0: { type: 'exponential',  
      visibleInLegend: 'true', 
      color: 'green',
      lineWidth: 10,
      opacity: 0.5}}",
      chartArea="{left:50,top:20,width:'50%',height:'75%'}"))
  })
  
  ## ---- ColumnChartWithTrendline ----

  output$ColumnChart <- renderGvis({
    gvisColumnChart(dat,
                    options=list(trendlines="{0: {}}"))
  })
  
  ## ---- DifferentLabels ----
  
  output$ColumnChartTrendline <- renderGvis({
    gvisColumnChart(dat,
                    options=list(trendlines="{
                                 0: {
                                 labelInLegend: 'Trendline 1',
                                 visibleInLegend: true,}, 
                                 1:{
                                 labelInLegend: 'Trendline 2',
                                 visibleInLegend: true}
                                 }",
                          chartArea="{left:50,top:20,
                          width:'50%',height:'75%'}"
                    ))
    })
  

})
