
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#



shinyServer(function(input, output) {

  
  output$Tooltip <- renderGvis({
  ## ---- Tooltip ----
    gvisScatterChart(df)
  
  })
  
  output$TooltipHTML <- renderGvis({
  ## ---- TooltipHTML ----
  levels(df$pop.html.tooltip)[1] <- 
    '<a href="http://www.r-project.com"><img src="http://www.r-project.org/Rlogo.jpg" alt="R logo" /></a>'

    gvisScatterChart(df,
                     options=list(tooltip="{isHtml:'true'}"))
  
  })
  
  output$CertaintyScopeEmphasis <- renderGvis({
  
  ## ---- CertaintyScopeEmphasis ----
  df <- data.frame(year=1:11, x=1:11,
                   x.scope=c(rep(TRUE, 8), rep(FALSE, 3)),
                   y=11:1, y.html.tooltip=LETTERS[11:1],                 
                   y.certainty=c(rep(TRUE, 5), rep(FALSE, 6)),
                   y.emphasis=c(rep(FALSE, 4), rep(TRUE, 7)))

    gvisScatterChart(df,options=list(lineWidth=2))
  
  })
  
  output$ColumnChart <- renderGvis({
  ## ---- ColumnChart ----
  dat <- data.frame(Year=2010:2013,
                    Sales=c(600, 1500, 800, 1000),
                    Sales.html.tooltip=c('$600K in our first year!',
                                         'Sunspot activity made this our best year ever!',
                                         '$800K in 2012.',
                                         '$1M in sales last year.'),
                    Sales.certainty=c(TRUE, FALSE, TRUE, FALSE))

    gvisColumnChart(dat, xvar='Year', 
                    yvar=c('Sales', 'Sales.certainty')
    )
  
  })
  
  output$Interval <- renderGvis({
  ## ---- Interval ----
  df <- data.frame(Year=2013:2014, Sales=c(120, 130), 
                   Sales.interval.1=c(100,110), 
                   Sales.interval.2=c(140, 150),
                   Sales.interval.3=c(90, 100),
                   Sales.interval.4=c(150, 170),
                   Sales.style=c('red', 'gold'),
                   Sales.annotation=c("North", "South"),
                   check.names=FALSE)
  

    gvisBarChart(df, xvar='Year', 
                 yvar=c('Sales',                       
                        'Sales.interval.1', 
                        'Sales.interval.2',
                        'Sales.style',
                        'Sales.annotation')
    )
  
  })
  
  output$Interval2 <- renderGvis({
    ## ---- Interval ----
    df <- data.frame(Year=2013:2014, Sales=c(120, 130), 
                     Sales.interval.1=c(100,110), 
                     Sales.interval.2=c(140, 150),
                     Sales.interval.3=c(90, 100),
                     Sales.interval.4=c(150, 170),
                     Sales.style=c('red', 'gold'),
                     Sales.annotation=c("North", "South"),
                     check.names=FALSE)

    gvisLineChart(df, xvar='Year', 
                  yvar=c('Sales', 
                         'Sales.interval.1', 
                         'Sales.interval.2'),
                  options=list(series="[{color:'purple'}]")
    )
  
  
  })
  
  output$Interval3 <- renderGvis({
    ## ---- Interval ----
    df <- data.frame(Year=2013:2014, Sales=c(120, 130), 
                     Sales.interval.1=c(100,110), 
                     Sales.interval.2=c(140, 150),
                     Sales.interval.3=c(90, 100),
                     Sales.interval.4=c(150, 170),
                     Sales.style=c('red', 'gold'),
                     Sales.annotation=c("North", "South"),
                     check.names=FALSE)

    gvisLineChart(df, xvar='Year', 
                  yvar=c('Sales', 
                         'Sales.interval.1', 
                         'Sales.interval.2', 
                         'Sales.interval.3', 
                         'Sales.interval.4'),
                  options=list(series="[{color:'purple'}]",
                               lineWidth=4,
                               interval="{
                               'i1': { 'style':'line', 'color':'#D3362D', 'lineWidth': 0.5 },
                               'i2': { 'style':'line', 'color':'#F1CA3A', 'lineWidth': 1 },
                               'i3': { 'style':'line', 'color':'#5F9654', 'lineWidth': 2 },
                               'i4': { 'style':'line', 'color':'#5F9654', 'lineWidth': 3 }
}")
  )
                  
  
  })
  
  output$Interval4 <- renderGvis({
    ## ---- Interval ----
    df <- data.frame(Year=2013:2014, Sales=c(120, 130), 
                     Sales.interval.1=c(100,110), 
                     Sales.interval.2=c(140, 150),
                     Sales.interval.3=c(90, 100),
                     Sales.interval.4=c(150, 170),
                     Sales.style=c('red', 'gold'),
                     Sales.annotation=c("North", "South"),
                     check.names=FALSE)

    gvisLineChart(df, xvar='Year', 
                  yvar=c('Sales', 
                         'Sales.interval.1', 
                         'Sales.interval.2', 
                         'Sales.interval.3', 
                         'Sales.interval.4'),
                  options=list(series="[{color:'purple'}]",
                               lineWidth=4,
                               intervals="{ 'style':'area' }",
                               interval="{
                               'i1': { 'color': '#4374E0', 'style':'bars', 'barWidth':0, 'lineWidth':4, 'pointSize':10, 'fillOpacity':1 },
                               'i2': { 'color': '#E49307', 'style':'bars', 'barWidth':0, 'lineWidth':4, 'pointSize':10, 'fillOpacity':1 }}"                                                          
                  )
                  )
                  
  
  })
  
  output$TwoLines <- renderGvis({
  ## ---- TwoLines ----
  df <- data.frame(country=c("US", "GB", "BR"), 
                   val1=c(1,3,4), 
                   val1.emphasis=c(TRUE, TRUE, FALSE),
                   val2=c(23,12,32))

    gvisLineChart(df, xvar="country", 
                  yvar=c("val1", "val1.emphasis")

  )
  })
  
  output$TwoLines2 <- renderGvis({
    ## ---- TwoLines ----
    df <- data.frame(country=c("US", "GB", "BR"), 
                     val1=c(1,3,4), 
                     val1.emphasis=c(TRUE, TRUE, FALSE),
                     val2=c(23,12,32))

    gvisLineChart(df, xvar="country", 
                  yvar=c("val1", "val1.emphasis", "val2")

  )
  })
  
  output$VerticalReferenceLine1 <- renderGvis({
  ## ---- VerticalReferenceLine ----
  dat <- data.frame(Year=2010:2013, 
                    Sales=c(600, 1500, 800, 1000),
                    Sales.annotation=c('First year', NA, NA, 'Last Year'),
                    Sales.annotationText=c('$600K in our first year!',
                                           NA,
                                           NA,
                                           '$1M in sales last year.'))      
  

    gvisLineChart(dat, xvar='Year', 
                  yvar=c('Sales',
                         'Sales.annotation',
                         'Sales.annotationText'),
                  options=list(annotations = "{style:'line'}")
    
  )
  })

})
