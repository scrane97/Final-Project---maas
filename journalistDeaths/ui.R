#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

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
             tags$head(
               tags$style(HTML("body{ 
                               background-image: url( http://roseburgfcc.org/wp-content/uploads/2016/03/storyteller1.jpg );
                               }"))),
    tabPanel("About this Project",
             column(4, class = "style"),
             h1("About this Project", alignt = "center"),
             textOutput('aboutProject'),
             h1("The Dataset", align = "center"),
             textOutput('dataset'),
             h1("Analysis", align = "center"),
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
                 
                    plotOutput("typeDeath"),
                    plotlyOutput("pie")
                  
                
                )
              )
              ),
     tabPanel("Gender and Job Correlations", 
              titlePanel("Gender and Method Correlation"), 
              plotlyOutput("women"),
              plotlyOutput("men")
              ),
     tabPanel("Summary and Statistics", 
              titlePanel("Summary and Statistics"),
              tableOutput('PreDeathConditions'),
              textOutput('deathInfo'),
              htmlOutput('mostDeaths')
              )
  )
))

