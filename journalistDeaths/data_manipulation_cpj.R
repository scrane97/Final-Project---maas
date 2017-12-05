library(dplyr)
library(plyr)
library(lubridate)
library(plotly)
library(data.table)
library(geojson)
library(geojsonio)
library(countrycode)
library(rgdal)
library(jsonlite)

data <- read.csv("data/cpj.csv")
data <- as.data.frame(data, stringsAsFactors = FALSE)

motive_confirmed <- function(){
  filter(data, Type == "Motive Confirmed")
}

motive_unconfirmed <- function(){
  filter(data, Type == "Motive Unconfirmed")
}

media_worker <- function(){
  filter(data, Type == "Media Workers")
}

count_of_deaths <- function(){
  
  countries <- select(data, Country_killed)
  countries <- as.data.frame(countries[!duplicated(countries$Country_killed),])
  countries <- as.data.frame(countries[-c(98),])
  deaths_per_country <- countries
  deaths_per_country$deaths <- NA

    country <- countries[1,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[1,2] <- nrow(deaths)
    country <- countries[2,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[2,2] <- nrow(deaths)
    country <- countries[3,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[3,2] <- nrow(deaths)
    country <- countries[4,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[4,2] <- nrow(deaths)
    country <- countries[5,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[5,2] <- nrow(deaths)
    country <- countries[6,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[6,2] <- nrow(deaths)
  
    country <- countries[7,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[7,2] <- nrow(deaths)
    country <- countries[8,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[8,2] <- nrow(deaths)
    country <- countries[9,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[9,2] <- nrow(deaths)
    country <- countries[10,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[10,2] <- nrow(deaths)
    country <- countries[11,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[11,2] <- nrow(deaths)
    country <- countries[12,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[12,2] <- nrow(deaths)
    
    country <- countries[13,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[13,2] <- nrow(deaths)
    country <- countries[14,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[14,2] <- nrow(deaths)
    country <- countries[15,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[15,2] <- nrow(deaths)
    country <- countries[16,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[16,2] <- nrow(deaths)
    country <- countries[17,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[17,2] <- nrow(deaths)
    country <- countries[18,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[18,2] <- nrow(deaths)
    
    country <- countries[19,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[19,2] <- nrow(deaths)
    country <- countries[20,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[20,2] <- nrow(deaths)
    country <- countries[21,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[21,2] <- nrow(deaths)
    country <- countries[22,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[22,2] <- nrow(deaths)
    country <- countries[23,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[23,2] <- nrow(deaths)
    country <- countries[24,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[24,2] <- nrow(deaths)
    
    country <- countries[25,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[25,2] <- nrow(deaths)
    country <- countries[26,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[26,2] <- nrow(deaths)
    country <- countries[27,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[27,2] <- nrow(deaths)
    country <- countries[28,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[28,2] <- nrow(deaths)
    country <- countries[29,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[29,2] <- nrow(deaths)
    country <- countries[30,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[30,2] <- nrow(deaths)
    
    country <- countries[31,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[31,2] <- nrow(deaths)
    country <- countries[32,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[32,2] <- nrow(deaths)
    country <- countries[33,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[33,2] <- nrow(deaths)
    country <- countries[34,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[34,2] <- nrow(deaths)
    country <- countries[35,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[35,2] <- nrow(deaths)
    country <- countries[36,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[36,2] <- nrow(deaths)
    
    country <- countries[37,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[37,2] <- nrow(deaths)
    country <- countries[38,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[38,2] <- nrow(deaths)
    country <- countries[39,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[39,2] <- nrow(deaths)
    country <- countries[40,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[40,2] <- nrow(deaths)
    country <- countries[41,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[41,2] <- nrow(deaths)
    country <- countries[42,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[42,2] <- nrow(deaths)
    
    country <- countries[43,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[43,2] <- nrow(deaths)
    country <- countries[44,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[44,2] <- nrow(deaths)
    country <- countries[45,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[45,2] <- nrow(deaths)
    country <- countries[46,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[46,2] <- nrow(deaths)
    country <- countries[47,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[47,2] <- nrow(deaths)
    country <- countries[48,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[48,2] <- nrow(deaths)
    
    country <- countries[49,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[49,2] <- nrow(deaths)
    country <- countries[50,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[50,2] <- nrow(deaths)
    country <- countries[51,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[51,2] <- nrow(deaths)
    country <- countries[52,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[52,2] <- nrow(deaths)
    country <- countries[53,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[53,2] <- nrow(deaths)
    country <- countries[54,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[54,2] <- nrow(deaths)
    
    country <- countries[55,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[55,2] <- nrow(deaths)
    country <- countries[56,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[56,2] <- nrow(deaths)
    country <- countries[57,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[57,2] <- nrow(deaths)
    country <- countries[58,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[58,2] <- nrow(deaths)
    country <- countries[59,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[59,2] <- nrow(deaths)
    country <- countries[60,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[60,2] <- nrow(deaths)
    
    country <- countries[61,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[61,2] <- nrow(deaths)
    country <- countries[62,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[62,2] <- nrow(deaths)
    country <- countries[63,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[63,2] <- nrow(deaths)
    country <- countries[64,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[64,2] <- nrow(deaths)
    country <- countries[65,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[65,2] <- nrow(deaths)
    country <- countries[66,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[66,2] <- nrow(deaths)
    
    country <- countries[67,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[67,2] <- nrow(deaths)
    country <- countries[68,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[68,2] <- nrow(deaths)
    country <- countries[69,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[69,2] <- nrow(deaths)
    country <- countries[70,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[70,2] <- nrow(deaths)
    country <- countries[71,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[71,2] <- nrow(deaths)
    country <- countries[72,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[72,2] <- nrow(deaths)
    
    country <- countries[73,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[73,2] <- nrow(deaths)
    country <- countries[74,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[74,2] <- nrow(deaths)
    country <- countries[75,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[75,2] <- nrow(deaths)
    country <- countries[76,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[76,2] <- nrow(deaths)
    country <- countries[77,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[77,2] <- nrow(deaths)
    country <- countries[78,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[78,2] <- nrow(deaths)
    
    country <- countries[79,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[79,2] <- nrow(deaths)
    country <- countries[80,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[80,2] <- nrow(deaths)
    country <- countries[81,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[81,2] <- nrow(deaths)
    country <- countries[82,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[82,2] <- nrow(deaths)
    country <- countries[83,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[83,2] <- nrow(deaths)
    country <- countries[84,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[84,2] <- nrow(deaths)
    
    country <- countries[85,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[85,2] <- nrow(deaths)
    country <- countries[86,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[86,2] <- nrow(deaths)
    country <- countries[87,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[87,2] <- nrow(deaths)
    country <- countries[88,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[88,2] <- nrow(deaths)
    country <- countries[89,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[89,2] <- nrow(deaths)
    country <- countries[90,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[90,2] <- nrow(deaths)
    
    country <- countries[91,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[91,2] <- nrow(deaths)
    country <- countries[92,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[92,2] <- nrow(deaths)
    country <- countries[93,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[93,2] <- nrow(deaths)
    country <- countries[94,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[94,2] <- nrow(deaths)
    
    country <- countries[95,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[95,2] <- nrow(deaths)
    country <- countries[96,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[96,2] <- nrow(deaths)
    country <- countries[97,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[97,2] <- nrow(deaths)
    country <- countries[98,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[98,2] <- nrow(deaths)
    
    country <- countries[99,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[99,2] <- nrow(deaths)
    country <- countries[100,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[100,2] <- nrow(deaths)
    
    country <- countries[101,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[101,2] <- nrow(deaths)
    country <- countries[102,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[102,2] <- nrow(deaths)
    country <- countries[103,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[103,2] <- nrow(deaths)
    country <- countries[104,1]
    deaths <- filter(data, Country_killed == country)
    deaths_per_country[104,2] <- nrow(deaths)
    return(deaths_per_country)
    }

most_deaths <- function(){
  deaths <- count_of_deaths()
  max <- as.data.frame(deaths[which.max(deaths$deaths),1], stringsAsFactors = FALSE)
  m <- as.character(max[1,1])
  return(m)
}

table_of_predeathconditions <- function() {
  captured <- as.data.frame(data$Taken_captive, stringsAsFactors = FALSE)
  captured <- filter(captured, data$Taken_captive == "Yes")
  Captured <- c(nrow(captured))
  threatened <- filter( as.data.frame(data$Threatened), data$Threatened == "Yes")
  Threatened <- c(nrow(threatened))
  
  data <- arrange(data, Tortured)
  Tortured <- c(98)
  pre_death_conditions <- as.data.frame(Captured)
  pre_death_conditions$Threatened <- Threatened
  pre_death_conditions$Tortured <- Tortured
 return(pre_death_conditions)
}


source_fire_gender <- function (input_country) {
  # Creates dataframe containing columns: Country_killed, Type (motive type), and Source_fire
  country_data <- data.frame(country= data$Country_killed, type=data$Type, source_fire=data$Source_fire)
  
  # Searches column 'country' and selects rows with 'Iraq'
  country_data <- filter(country_data, grepl(input_country, country))
  
  # Searches column 'type' and selects rows with 'Motive Confirmed'
  country_data <- filter(country_data, grepl("Motive Confirmed", type))  
  
  # List of all source fires
  list_of_all_source_fires <- country_data$source_fire
  
  # Dataframe of just the types of source fire
  df_type_of_source_fire <- distinct(country_data, source_fire)
  
  # List of just the types of source fire
  list_type_of_source_fire <- df_type_of_source_fire$source_fire
  
  # Creates table with frequency of each group dropping levels containing 0
  tab <- table(droplevels(country_data$source_fire))

  # Creates a barplot of the frequency of deaths grouped by type of source fire
  plot <- barplot(tab, main="Frequency of Deaths by Source Fire", xlab="Source Fire", ylab="Frequency", col='#3366FF')
  text(plot, 0, round(tab, 1), cex=1,pos=3)
  
  return(plot)
}

country <- countrycode_data
map <- function(){
  d <- count_of_deaths()
  
  country <- countrycode_data
  country <- country$country.name.en
  country <- as.data.frame(country, stringsAsFactors = FALSE)
  
  country$deaths <- 0
  
  country[1,2] <- 36
  country[4,2] <- 61
  country[7,2] <- 11
  country[11,2] <- 4
  country[12,2] <- 1
  country[17,2] <- 6
  country[20,2] <- 3
  country[21,2] <- 29
  country[24,2] <- 6
  country[30,2] <-3
  country[32,2] <-25
  country[35,2] <- 49
  country[38,2] <- 2
  country[39,2] <- 1
  country[40,2] <- 4
  country[42,2] <- 12
  country[43,2] <- 1
  country[44,2] <- 2
  country[46,2] <-1
  country[47,2] <- 3
  country[49,2] <-5
  country[52,2] <- 84
  country[56,2] <- 1
  country[58,2] <- 4
  country[61,2] <- 1
  country[64,2] <- 14
  country[68,2] <- 4
  country[238,2] <- 2
  country[69,2] <-3
  country[70,2] <- 13
  country[71,2] <- 6
  country[73,2] <- 2
  country[75,2]<- 2
  country[81,2] <-10
  country[85,2] <- 1
  country[86,2] <- 1
  country[87,2] <- 9
  country[90,2] <-1
  country[92,2] <- 1
  country[97,2] <- 23
  country[99,2] <- 4
  country[102,2] <- 9
  country[108,2] <- 23
  country[112,2] <- 69
  country[113,2] <- 11
  country[114,2] <- 5
  country[115,2] <- 264
  country[116,2] <- 1
  country[118,2] <- 21
  country[57,2] <- 6
  country[121,2] <- 1
  country[124,2] <- 2
  country[125,2 ]<- 5
  country[130,2] <- 1
  country[131,2] <-2
  country[133,2] <- 1
  country[134,2] <- 10
  country[137,2] <- 13
  country[139,2]<- 1
  country[142,2] <-2
  country[146,2] <-2
  country[154,2] <- 89
  country[162,2]<- 2
  country[163,2] <- 4
  country[166,2] <- 17
  country[171,2]<- 2
  country[173,2] <- 19
  country[179,2]<- 86
  country[182,2] <-1
  country[183,2] <- 1
  country[184,2] <-6
  country[186,2] <- 15
  country[187,2] <- 133
  country[189,2] <- 1
  country[54,2] <- 3
  country[198,2] <- 80
  country[199,2] <- 23
  country[210,2] <- 1
  country[213,2] <- 3
  country[215,2] <- 17
  country[221,2] <- 66
  country[222,2] <- 4
  country[224,2] <- 8
  country[225,2] <- 1
  country[226,2] <- 25
  country[227,2] <-2
  country[233,2]<- 116
  country[235,2] <- 29
  country[254,2] <- 2
  country[236,2] <- 16
  country[243,2] <- 1
  country[244,2] <- 29
  country[245,2] <- 1
  country[250,2] <- 5
  country[253,2] <- 3
  country[251,2] <- 19
  country[257, 2] <- 1
  country[255,2] <- 9
  country[258,2] <- 1
  country[260,2] <- 9
  country[261,2] <- 1
  country[267,2]<- 19
  country[270,2] <- 10
  country[273,2] <- 1
  
  country$iso_a2 <- countrycode_data$iso2c
  
  country<- na.omit(country)
  country <- dplyr::left_join(as.data.frame(world) %>% select(iso_a2), country, by=c("iso_a2" = "iso_a2"))
    
  
  
  url <- "https://raw.githubusercontent.com/datasets/geo-boundaries-world-110m/master/countries.geojson"
  
  doc <- readLines(url)
  
  write(doc, file = "tempgeoworld.json")
  world <- geojson_read("tempgeoworld.json", what = "sp")
  
  map <- leaflet(world)
  
  par(mar = c(5,5,0,0), cex = 0.8)
  
  
  
  
  #####
  bins <- c(0, 1, 2,  4, 5,10,20,60,100,300)
  pal <- colorBin("Blues", domain = country$deaths, bins = bins)
  
  labels <- sprintf(
    "<strong>%s</strong><br/>%g deaths",
    country$country, country$deaths
  ) %>% lapply(htmltools::HTML)
  
  leaflet(world) %>%
    setView(-96, 37.8, 4) %>%
    addProviderTiles("MapBox", options = providerTileOptions(
      id = "mapbox.light",
      accessToken = Sys.getenv('pk.eyJ1IjoiYWJodWFuZyIsImEiOiJjamFwdW56ZGU0MmtxMnFvMnA4NTMwNmc4In0.VYRqH0KCDukhlyLZYZEmoQ'))) %>%
    addPolygons(
      fillColor = ~pal(country$deaths),
      weight = 2,
      opacity = 1,
      color = "white",
      dashArray = "3",
      fillOpacity = 1,
      highlight = highlightOptions(
        weight = 5,
        color = "#357DED",
        dashArray = "",
        fillOpacity = 0.7,
        bringToFront = TRUE),
      label = labels,
      labelOptions = labelOptions(
        style = list("font-weight" = "normal", padding = "3px 8px"),
        textsize = "15px",
        direction = "auto")) %>%
    addLegend(pal = pal, values = ~country$deaths, opacity = 0.7, title = NULL,
              position = "bottomright")
}

piechart <- function(input.country) {

  data <- motive_confirmed()
  
  
  # pie chart
  # pick the country, display the nationalities of dead journalists

  country.data <- select(data, Nationality, Country_killed) %>%
    filter(Country_killed == input.country)
  country.data <- group_by(country.data, Nationality) %>%
    dplyr::summarize(n = n())
  head(country.data)
  # pie chart construction using plotly
  pie <- plot_ly(country.data, labels = ~Nationality, values = ~n, type = 'pie', textposition = 'inside', textinfo = 'label') %>%
    layout(title = paste("Nationalities of Journalists Killed in", input.country),
           xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
           yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
  print(pie)

}


gender_women <- function() {
  women <- filter(data, Sex == "Female")
  women <- select(women, Sex, Job)
  women <- group_by(women, Job) %>%
    dplyr::summarize(n=n())
  chart <- plot_ly(women, labels = ~Job, values = ~n, type = 'pie', textposition = 'inside', textinfo = 'label') %>%
    layout(title = paste("Types of Jobs held by Women who were killed"),
           xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
           yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
  print(chart)
  
}

gender_male <- function() {
  women <- filter(data, Sex == "Male")
  women <- select(women, Sex, Job)
  women <- group_by(women, Job) %>%
    dplyr::summarize(n=n())
  women <- filter(women, n >2)
  chart <- plot_ly(women, labels = ~Job, values = ~n, type = 'pie', 
                   marker = list(colors = c("#556677", "#AA3344", "#772200", 
                                            "#11AA22", "#AA231B88")),
                   textposition = 'inside', textinfo = 'label') %>%
    layout(title = paste("Types of Jobs held by Men who were killed"),
           xaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE),
           yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
  print(chart)
}

