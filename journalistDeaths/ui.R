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
library(lubridate)
library(plotly)
library(data.table)
library(geojson)
library(geojsonio)
library(countrycode)
library(rgdal)
library(jsonlite)
library(leaflet)
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
  navbarPage("Journalist Deaths Since 1992", 
             tags$head(
               tags$style(HTML("body{ 
                               background-image: url( http://roseburgfcc.org/wp-content/uploads/2016/03/storyteller1.jpg );
                               }"))),
             
    tabPanel("About this Project",
             # About this project
             h1("About this Project"),
             p("For this INFO 201 Project, we investigated a dataset about the deaths of journalists in the past 25 years (since 1992).",
               tags$br("Some of the initial questions that we aimed to answer with this analysis include:")),
             tags$li("Which countries are the deadliest for journalists?"),
             tags$li("Which groups are responsible for the deaths of journalists?"),
             tags$li("Whether it is more common to be killed when working abroad as opposed to working at home"),
             tags$li("Is there a difference in the circumstances when men and women were killed?"),
             tags$li("Is there a significant difference in how male and female journalists were deployed?"),
             p(),
             p("These questions and their answers are aimed to help give insight as to what level of free media comes out of these countries,",
               tags$br("and what political/social/economic implications there might be.")),
             p("They can also help people understand the threats that journalists face in these countries."),
             
             # The Dataset
             h1("The Dataset"),
             p("The dataset that we worked with is a .csv file - ",
               tags$a(href= "https://www.kaggle.com/qhlearner/journalists-killed-worldwide-since-1992", "Journalists Killed Worldwide Since 1992"), 
               ". The dataset was taken from Kaggle.com.", 
               tags$br("As for the data itself, it has been gathered from news sources from 1992 - 2016 by the ", tags$em("Committee to Protect Journalists (CPJ). "))),
             
             # CPJ
             h1("Comittee to Protect Journalists"),
             p("When press freedom violations occur, CPJ has correspondents who report and take action on behalf of those targeted. CPJ reports", 
               tags$br("are on violations in repressive countires, conflict zones, and established democracies alike. A Board of prominent journalists ",
               tags$br("from around the world helps guide CPJ's activites."))),
             
             # Analysis
             h1("Analysis"),
             p("This data is not complete, nor does it include every country, but it does reflect the pattern for journalist deaths. This pattern is most", 
               tags$br("closely related to internal political conflict & wars going on in these countries. Those countires with a greater frequency of these issues",
               tags$br("have the highest reports of journalist deaths when correlated with impunity for murder."))), 
             p("High numbers of unknown source fire demonstrates a lack of documentation within the data."),
             p("Additionally, un-proportional amounts of reports in more highly publicised countries than others",
               tags$br("suggests that the data is influenced more by events, and not by regular practice in these countries.")),
             p("There are disproportionately more male journalists than female who were reported as murdered in the data, but there was an interesting consistency
               present across genders. Print and broadcast journalists are the most targeted, likely as they are the ones in the field. The majority of deaths were
               not preceded by torture, threats, or captivity.")
             ),
    
    tabPanel("World Map", 
              titlePanel("Map of Deaths"),
              p("This world map shows the counts of deaths in each country.", 
                tags$br("Hover over a country to see the number of journalists killed in that country.")),
              leafletOutput('Map')
              ),
    
     tabPanel("Country Data", 
              titlePanel("View of Countries"),
              sidebarLayout(
                sidebarPanel(
                  p("For the selected country, view the groups that killed journalists, as well as the nationalites of the journalists killed."),
                  selectInput("countries",
                              "Country",
                              list)
                ),

                # Shows both histogram and pie-chart
                mainPanel(
                    plotOutput("typeDeath"),
                    plotlyOutput("pie")
                )
              )
              ),
    
     tabPanel("Gender and Job Correlations", 
              titlePanel("Gender and Job Correlation"),
              plotlyOutput("women"),
              plotlyOutput("men")
              ),
    
     tabPanel("Summary and Statistics", 
              titlePanel("Summary and Statistics"),
              p("The following is a summary of what we discovered from our data:"),
              tags$br(),
              
              p("- The majority of reporters are killed at home, as opposed to being killed in foreign countries."),
              tags$br(),
              
              p("- There is no equal representation between male and female journalists - an overwhelming majority of the deaths logged were male.",
                tags$br("This begs the following questions that would require more information to get answered - are female deaths less noticed? Are there just fewer",
                tags$br("female journalists? Or are male journalists just more likely to die?"))),
              
              p("- There is a noticeable discrepancy in the numbers - do some countries have more resources for their journalists to count these deaths than others?",
                tags$br("Some countries have more of a tendency towards impunity than others, like Iraq, the Philippines, and Syria. Additionally, these countries",
                tags$br("have been recently affected by major conflicts: Iraq War, Philippines' war on drugs, Arab Spring, and the Syrian Civil War."))),
              
              p("- Another piece of data that we extracted was that the majority of the source fire is from political groups, then military, then unknown.",
                tags$br("Government officials result in the fourth highest frequency of murders.")),
              tags$br(),
              
              p("- For both male and female journalists, the mediums of coverage that was attacked the most were Print (M=21.5%, F=32.5%) and Broadcast (M=17.5%, F=35%)."),
              tags$br(),
              
              p("- Additionally, we noticed that the majority of deaths were not preceeded by torture, threat, or captivity."),
              tableOutput('PreDeathConditions'),
              p("From looking at this results of the table, it reveals that 1175 of the document individuals have no recorded instances of torture/threats/captivity.",
                tags$br("We found this to be very interesting, as we suspected that a higher amount of individuals would have had something happen to them before death."))
              )
  )
))