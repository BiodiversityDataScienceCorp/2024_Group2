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

usethis:: edit_r_environ()

BatBackbone<-name_backbone(name= "Myotis lucifugus")
speciesKey<-BatBackbone$usageKey

occ_download(pred("taxonKey",speciesKey), format = "SIMPLE_CSV")

# Your download is being processed by GBIF:
#   https://www.gbif.org/occurrence/download/0017613-240216155721649
# Most downloads finish within 15 min.
# Check status with
# occ_download_wait('0017613-240216155721649')
# After it finishes, use
# d <- occ_download_get('0017613-240216155721649') %>%
#   occ_download_import()
# to retrieve your download.
# Download Info:
#   Username: cajayonc
# E-mail: ccajayon@lclark.edu
# Format: SIMPLE_CSV
# Download key: 0017613-240216155721649
# Created: 2024-02-26T00:31:57.137+00:00
# Citation Info:  
#   Please always cite the download DOI when using this data.
# https://www.gbif.org/citation-guidelines
# DOI: 10.15468/dl.4a3fpw
# Citation:
#   GBIF Occurrence Download https://doi.org/10.15468/dl.4a3fpw Accessed from R via rgbif (https://github.com/ropensci/rgbif) on 2024-02-26

bat<- occ_download_get('0017613-240216155721649',path ="data/") %>% 
  occ_download_import()

write_csv(bat, "data/rawData.csv")

batdata <- read_csv("data/rawData.csv")

batdata <- batdata %>% 
  filter(!is.na(decimalLatitude), !is.na(decimalLongitude))

batdata

