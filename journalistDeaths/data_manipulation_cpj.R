library(dplyr)
library(plyr)
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

