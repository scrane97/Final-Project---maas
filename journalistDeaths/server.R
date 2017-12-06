#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
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
library(leaflet)
source("data_manipulation_cpj.R")


shinyServer(function(input, output) {
  
  # Define server logic required to draw a histogram
  output$typeDeath <- renderPlot({
    source_fire_gender(input$countries)
  })
  
  output$aboutProject2 <- renderUI({
    p1 <- paste("For this INFO 201 Project, we looked at a dataset centered around journalist deaths in the last 25 years.
                Some of the questions we wanted answered include:
                tags$li('test')")
    
    HTML(paste(p1, sep = '<br/>'))
  })
  
  # Summary and Statistics Tab
  # Creates Table and displays Table about what happened to journalists before death
    make_table <- reactive({
      return(table_of_predeathconditions())
    })
  output$PreDeathConditions <- renderTable({
     make_table()
    })
  
  output$Map <- renderLeaflet(map())
  output$pie <- renderPlotly(
    piechart(input$countries)
    )

  output$women <- renderPlotly(gender_women())
  output$men <- renderPlotly(gender_male())
})




