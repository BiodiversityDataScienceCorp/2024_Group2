# Loading in the Data (created in Mlucifugis.R)
data <- read.csv("data/cleanedData.csv")

# Load Libraries 
library(leaflet)
library(mapview)
library(webshot2)
library(tidyverse)

# Creating Map
map <- leaflet(options = leafletOptions(zoomControl = FALSE)) %>% 
  addProviderTiles("Esri.WorldTopoMap") %>%
  addCircleMarkers(data = data,
                   lat = ~decimalLatitude,
                   lng = ~decimalLongitude,
                   radius = 3,
                   color = "hotpink",
                   fillOpacity = 0.8) %>%
  addLegend(position = "topright",
            title= "species occurence from gbif", 
            labels ="Myotis Lucifugus", 
            colors = "hotpink")




