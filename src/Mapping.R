# Loading in the Data (created in Mlucifugis.R)
data <- read.csv("data/cleanedData.csv")
data <- read_csv("data/cleanedDataOrAz.csv")

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

mapshot2(map, file = "output/occurrenceMapv2OrAz.png")

map

#The occurrence points are in great numbers on the west and east coast of the U.S., and start to decrease as you move towards the middle of the U.S.

#trying to remove non north america points 

maptwo <- leaflet(options = leafletOptions(zoomControl = FALSE)) %>% 
  addProviderTiles("Esri.WorldTopoMap") %>%
  addCircleMarkers(data = testFilter,
                   lat = ~decimalLatitude,
                   lng = ~decimalLongitude,
                   radius = 3,
                   color = "hotpink",
                   fillOpacity = 0.8) %>%
  addLegend(position = "topright",
            title= "species occurence from gbif", 
            labels ="Myotis Lucifugus", 
            colors = "hotpink")

maptwo