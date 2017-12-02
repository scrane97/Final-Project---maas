#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2] 
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
    
  })
  
  output$WorldMap <- renderText("A map of deaths across the world")
  output$Page2 <- renderText("This is page 2!!!")
  output$genderCorrelation <- renderText("This shows the correlation of Gender and the death method")
  output$SummaryAndStats <- renderText("Here are summary and stats!!!")
  output$AboutThisProject <- renderText("")
  output$dataset <- renderText("The dataset for this project is Journalists Killed Worldwide Since 1992. 
                                This data had been gathered from news sources from 1992 - 2016 
                                by the Committee to Protect Journalists (CPJ)
                              ")
  
})
