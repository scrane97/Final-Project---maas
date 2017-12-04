#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
source("data_manipulation_cpj.R")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$typeDeath <- renderPlot({
    source_fire_gender(input$countries)
  })
  
  output$aboutProject <- renderText("For this project we looked at a dataset about journalists killed in the last 25 years.
                          Questions that our project aims to answer include; 
                          whether it is more common to be killed working abroad or at home, which countries are journalists most threatened by death while working, 
                          if most journalists killed in war zones were working freelance, and is there a correlation between gender and method killed? We also aim 
                          to show what the implications of pursuing journalism and free media are and to see if there a more strategic and common pattern of attack 
                          against journalists. These questions and their answers are aimed to help give insight as to what level of free media comes out of these 
                          countries and what political/social/economic implications there might be. They can also help people understand the threat against journalists 
                          in these places. 
                          ")
  output$dataset <- renderText("The dataset that we will be working with is a csv. file - Journalists Killed Worldwide Since 1992 
                  (https://www.kaggle.com/qhlearner/journalists-killed-worldwide-since-1992) from Kaggle.com. This data has been
                  gathered from news sources from 1992 - 2016 by the Committee to Protect Journalists (CPJ). When press freedom 
                  violations occur, CPJ has correspondents who report and take action on behalf of those targeted. They have 40 
                  experts headquartered in NYC. CPJ reports are on violations in repressive countries, conflict zones, and 
                  established democracies alike. A board of prominent journalists from around the world helps guide CPJ's activities.
                  ")
  output$analysis <- renderText("Place Analysis Here!!!!!!!")
  output$WorldMap <- renderText("A map of deaths across the world")
  output$Page2 <- renderText("This is page 2!!!")
  output$genderCorrelation <- renderText("This shows the correlation of Gender and the death method")
  


    make_table <- reactive({
      return(table_of_predeathconditions())
    })
  
  output$PreDeathConditions <- renderTable({
     make_table()
    })
  output$deathInfo <- renderText("This table shows what the journalists experienced prior to death. As you can see, 1175 of the documented individuals have no recorded instances of torture, etc")
  country <- most_deaths()
  output$mostDeaths <- renderText({
    paste("<br><br><b>Iraq<b>"," has had the most journalists die within its border since 1992")
    })
    
  output$AboutThisProject <- renderText("")
  output$Map <- renderLeaflet(map())
  output$pie <- renderPlotly(
    piechart(input$countries)
    )

  
})




