library(shiny)
library(WDI)
library(googleVis)

#inds <- c('SP.DYN.TFRT.IN','SP.DYN.LE00.IN', 'SP.POP.TOTL',
#          'NY.GDP.PCAP.CD', 'SE.ADT.1524.LT.FE.ZS')
#indnams <- c("fertility.rate", "life.expectancy", "population",
#             "GDP.per.capita.Current.USD", "15.to.25.yr.female.literacy")
#wdiData <- WDI(country="all", indicator=inds,
#               start=1960, end=format(Sys.Date(), "%Y"), extra=TRUE)
#colnum <- match(inds, names(wdiData))

#names(wdiData)[colnum] <- indnams

#WorldBank <- droplevels(subset(wdiData, !region %in% "Aggregates"))

#save.image("worldbank.RData")
load(file="worldbank.RData")
