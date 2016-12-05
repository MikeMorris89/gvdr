
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(shinydashboard)




## Sidebar content
dbs<-dashboardSidebar(
  sidebarMenu(
    menuItem("Tooltip", tabName = "Tooltip", icon = icon("dashboard")),
    menuItem("TooltipHTML", tabName = "TooltipHTML", icon = icon("dashboard")),
    menuItem("CertaintyScopeEmphasis", tabName = "CertaintyScopeEmphasis", icon = icon("dashboard")),
    menuItem("ColumnChart", tabName = "ColumnChart", icon = icon("dashboard")),
    menuItem("Interval", tabName = "Interval", icon = icon("dashboard")),
    menuItem("Interval2", tabName = "Interval2", icon = icon("dashboard")),
    menuItem("Interval3", tabName = "Interval3", icon = icon("dashboard")),
    menuItem("Interval4", tabName = "Interval4", icon = icon("dashboard")),
    menuItem("TwoLines", tabName = "TwoLines", icon = icon("dashboard")),
    menuItem("TwoLines2", tabName = "TwoLines2", icon = icon("dashboard")),
    menuItem("VerticalReferenceLine1", tabName = "VerticalReferenceLine1", icon = icon("dashboard"))
  )
)

## Body content
dby<-dashboardBody(
  tabItems(
    # First tab content
     tabItem(tabName = "Tooltip",htmlOutput("Tooltip"))
    ,tabItem(tabName = "TooltipHTML",htmlOutput("TooltipHTML"))
    ,tabItem(tabName = "CertaintyScopeEmphasis",htmlOutput("CertaintyScopeEmphasis"))
    ,tabItem(tabName = "ColumnChart",htmlOutput("ColumnChart"))
    ,tabItem(tabName = "Interval",htmlOutput("Interval"))
    ,tabItem(tabName = "Interval2",htmlOutput("Interval2"))
    ,tabItem(tabName = "Interval3",htmlOutput("Interval3"))
    ,tabItem(tabName = "Interval4",htmlOutput("Interval4"))
    ,tabItem(tabName = "TwoLines",htmlOutput("TwoLines"))
    ,tabItem(tabName = "TwoLines2",htmlOutput("TwoLines2"))
    ,tabItem(tabName = "VerticalReferenceLine1",htmlOutput("VerticalReferenceLine1"))
           
    )
  )



ui <- dashboardPage(skin = "green"
  ,dashboardHeader(title = "Google Vis Roles Demo")
  ,dbs
  ,dby
)