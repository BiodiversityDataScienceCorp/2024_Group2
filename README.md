---
editor_options: 
  markdown: 
    wrap: 72
---

# Repository for Making Species Occurrence and Distribution maps for the Little Brown Bat (*Myotis Lucifugus*)

## Calvin Cajayon, Olivia Garcia, Antonio Rioseco, Mairin Thorne

![*Myotis Lucifugus* - the Little Brown
Bat!](images/Little_Brown_Myotis.JPG)

## 🦇 Overview

The Little Brown Bat, *Myotis Lucifugus* has a widespread range in North
America from Alaska-Canada forests. This species has had a history of a
declining population due to the white-nose syndrome, a deadly novel
fungal disease. The US Fish and Wildlife Service is currently reviewing
the status of the Little Brown Bat and hopes to maintain the longevity
of the species.

## 🔗 Dependencies

The project uses the following additional R packages and versions (will
be installed with file when needed): + Base + CoordinatedCleaner +
datasets + dplyr + forcats + ggplot2 + graphics + grDevices + leaflet +
lubridate + mapview + methods + purrr + readr + rgbif + stats +
stringr + tibble + tidyr + tidyverse + usethis + utils + webshot2

## 📂 Structure

### 💾 Data

`rawData.csv` - uncleaned data downloaded from GBIF for *Myotis
Lucifugus*\
`cleanedData.csv` - cleaned data based off of `rawData.csv` limiting
data to only living observations inside of the United States of America\
`cleanedDataOrAz.csv`- cleaned to limit data points to the west coast of
the United States of America to allow future SDM to run

### 🖼Images

`Little_Brown_Myotis.JPG` - image used in README

### 🗺️ Output

`mlucifugusCurrentSdm.jpg` - Current SDM\
`mlucifugusCurrentSdmOrAz.jpg` - Current SDM limited to only the West
Coast\
`mlucifugusFutureSdmOrAz.jpg` - Future SDM limited to only the West
Coast\
`occurrenceMap.png` - First version of the occurrence map included
countries that were not meant to be included\
`occurrenceMapv2.png` - Final version of the occurrence map

### 📜 Src

`Mapping.R` - Creating the occurrence map\
`Mlucifugus.R` - Downloading data and cleaning data\
`MlucifugusSDM.R` - Creating the SDM's

## 🏃 Running the code

run the code in the following order:\
`Mlucifugus.R`\
`Mapping.R`\
`MlucifugusSDM.R`

## 🤔 Considerations

Although the Future SDM makes the next 50 years for the Little Brown Bat
look good, the fungal disease White Nose Syndrome is endangering the
Little Brown Bat and other species of bats accros the countries.
