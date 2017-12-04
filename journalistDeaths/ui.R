#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(dplyr)
library(plyr)


data <- read.csv("cpj.csv")
data <- as.data.frame(data, stringsAsFactors = FALSE)

countries <- select(data, Country_killed)
countries <- as.data.frame(countries[!duplicated(countries$Country_killed),])
v <- countries[-c(98),]
countries <- as.data.frame(v)

list <- countries$v


library(shiny)

# Define UI for application that draws a histogram
shinyUI(
  
    
  fluidPage(
  navbarPage("Journalist Deaths", 
    tabPanel("About this Project",
             titlePanel("About this Project"),
             textOutput('aboutProject'),
             titlePanel("The Dataset"),
             textOutput('dataset'),
             titlePanel("Analysis"),
             textOutput('analysis')
             ),
    tabPanel("World Map", 
              titlePanel("Map of Deaths"),
              textOutput('WorldMap'),
              leafletOutput('Map')
              ),
     tabPanel("Graphs", 
              titlePanel("View of Countries"),
              textOutput('These graphs show...'),
              sidebarLayout(
                sidebarPanel(
                  selectInput("countries",
                              "Countries",
                              list
                              )
                ),

                # Show a plot of the generated distribution
                mainPanel(
                  plotOutput("typeDeath")
                  
                )
              )
              ),
     tabPanel("Gender and Method Correlation", 
              titlePanel("Gender and Method Correlation"), 
              textOutput('genderCorrelation')
              ),
     tabPanel("Summary and Statistics", 
              titlePanel("Summary and Statistics"),
              tableOutput('PreDeathConditions'),
              textOutput('deathInfo'),
              htmlOutput('mostDeaths')
              )
  )
))

