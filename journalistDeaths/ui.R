#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

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
              sidebarLayout(
                sidebarPanel(
                  sliderInput("bins",
                              "Number of bins:",
                              min = 1,
                              max = 50,
                              value = 30)
                ),
                
                # Show a plot of the generated distribution
                mainPanel(
                  plotOutput("distPlot")
                )
              )
              ),
     
     tabPanel("2", 
              titlePanel("Page 2"),
              textOutput('Page2')
              ),
     tabPanel("Gender and Method Correlation", 
              titlePanel("Gender and Method Correlation"), 
              textOutput('genderCorrelation')
              ),
     tabPanel("Summary and Statistics", 
              titlePanel("Summary and Statistics"),
              textOutput('SummaryAndStats'),
              tableOutput('PreDeathConditions')
              )
  )
))

