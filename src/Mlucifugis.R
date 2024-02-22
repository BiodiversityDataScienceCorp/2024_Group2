# gbif.R::
# query species occurrence data from GBIF
# clean up the data
# save it as a csv file
# create a map to display the species occurrence points

# list of packages to install
packages<-c("tidyverse","rgbif","usethis","CoordinateCleaner","leaflet","mapview", "webshot2")

# install packages not yet installed
installed_packages<-packages %in% rownames(installed.packages())
if(any(installed_packages==FALSE)){
  install.packages(packages[!installed_packages])
}

# packages loading, with library function
invisible(lapply(packages, library, character.only=TRUE))

