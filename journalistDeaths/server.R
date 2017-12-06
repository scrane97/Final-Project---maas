# Abby Huang, Allison Picker, Michael Bradley, Sophie Crane
# INFO 201 Final Project 
# December 6th, 2017

#load libraries
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

#instantiate datafile with main functions
source("data_manipulation_cpj.R")


shinyServer(function(input, output) {
  
  # Define server logic for interactive graphs to be displayed
  output$typeDeath <- renderPlot({
    source_fire_gender(input$countries)
  })
  
  # Add HTML to UI
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

  # Render world map using leaflet 
  output$Map <- renderLeaflet(map())
  
  # Pie chart on nationalities
  output$pie <- renderPlotly(
    piechart(input$countries)
    )
  
  # Render plots on the different jobs journalist victims had based on gender
  output$women <- renderPlotly(gender_women())
  output$men <- renderPlotly(gender_male())
})




