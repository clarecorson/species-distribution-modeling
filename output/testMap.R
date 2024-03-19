data <- read.csv("data/cleanedData.csv")

library(leaflet)
library(mapview)
library(webshot2) # Needed to save the map!

# Generate the map
map <- leaflet() |>
  addProviderTiles("Esri.WorldTopoMap") |>
  addCircleMarkers(data = data, 
                   lat = ~decimalLatitude,
                   lng = ~decimalLongitude,
                   radius = 3,
                   color = "magenta",
                   fillOpacity = 0.8) |>
  addLegend(position = "topright",
            title = "Species Occurences from GBIF",
            labels = "Habronattus americanus",
            colors = "magenta")

# Save the map
mapshot2(map, file = "output/leafletTest.png")







