
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#
#install.packages("dygraphs")
library(shiny)
library(dygraphs)



shinyServer(function(input, output) {

  output$p1 <- renderGvis({
    jscode <- "window.open('http://en.wikipedia.org/wiki/'+data.getValue(chart.getSelection()[0].row,0));  "


    gvisGeoMap(Exports, locationvar='Country', numvar='Profit',
                    options=list(dataMode="regions",gvis.listener.jscode=jscode))

  })
  output$p2 <- renderGvis({
    
    gvisOrgChart(Regions,  options=list(gvis.listener.jscode=jscode))
    
  })
  output$p3 <- renderGvis({
    
    gvisBarChart(Regions[,c(1,3)],  options=list(gvis.listener.jscode=jscode))
    
  })
  output$p4 <- renderGvis({
    jscode <- "
       var sel = chart.getSelection();
    var row = sel[0].row;
    var text = data.getValue(row,1);
    alert(text);
    "
    
    gvisTable(Population,options=list(gvis.listener.jscode=jscode))
  })
  
})
