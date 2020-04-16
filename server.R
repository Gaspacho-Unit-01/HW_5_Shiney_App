# server.R

source("helpers.R") 
counties <- readRDS("data/counties.rds")
library(maps) 
library(dplyr)
library(mapproj)

shinyServer(
  function(input, output) {
    
    output$map <- renderPlot({
      
      percent_map(5, 'green', 'Counties by Race', min, max)
    })
      
  }
)
    