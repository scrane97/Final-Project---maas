# Abby Huang, Allison Picker, Michael Bradley, Sophie Crane
# INFO 201 Final Project 
# December 6th, 2017

#load libraries
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
library(shiny)

#read in the csv file into a data frame 
data <- read.csv("cpj.csv")
data <- as.data.frame(data, stringsAsFactors = FALSE)

#get the countries that journalists were killed data
countries <- select(data, Country_killed)

#scrub dataframe for duplicates
countries <- as.data.frame(countries[!duplicated(countries$Country_killed),])
v <- countries[-c(98),]
countries <- as.data.frame(v)
list <- countries$v


# Define UI for application that includes multiple tabs to display data
shinyUI(
  
  fluidPage(
  navbarPage("Journalist Deaths Since 1992", 
             tags$head(
               #set background image
               tags$style(HTML("body{ 
                               background-image: url( http://roseburgfcc.org/wp-content/uploads/2016/03/storyteller1.jpg );
                               }"))),
    
    #HTML for tab layout
    tabPanel("About this Project",
             # About this project
             h1("About this Project"),
             p("For this INFO 201 Project, we investigated a dataset about the deaths of journalists in the past 25 years (since 1992).",
               tags$br("Some of the initial questions that we aimed to answer with this analysis include:")),
             tags$li("Which countries are the deadliest for journalists?"),
             tags$li("Which groups are responsible for the deaths of journalists?"),
             tags$li("Is it more common for journalists to be killed working abroad as opposed to working at home?"),
             tags$li("Are there any differences in the circumstances in which men and women journalists were killed?"),
             tags$li("How many journalists have been killed in different countries around the world? Can we correlate rates of deaths based on world events?"),
             p(),
             p("By tracking the brute injustice that inflicts journalists all over the world doing their jobs, this public data is protecting the freedom of expression and democracy. 
               It is an effort made by the international community that defends the free flow of news and commentary by publicizing and taking action against the systems 
               that allow journalists to be attacked, imprisoned, killed, kidnapped, threatened, censored or harassed. Based on this indicative data, a global campaign against 
               impunity was inspired, especially in countries where they found significantly high rates of murder of journalists, yet responsively low conviction rates.",
               tags$br()),
             p("The data CPJ has collected says a lot about the significant events in history, and what political/social/economic implications there might be. The recorded responses made by countries helps us understand the threats that different journalists face across the world."),
             
             # The Dataset
             h1("The Dataset"),
             p("The dataset that we worked with is a .csv file - ",
               tags$a(href= "https://www.kaggle.com/qhlearner/journalists-killed-worldwide-since-1992", "Journalists Killed Worldwide Since 1992"), 
               ". The dataset was taken from Kaggle.com.", 
               tags$br("As for the data itself, it has been gathered from news sources from 1992 - 2016 by the ", tags$em("Committee to Protect Journalists (CPJ). "))),
             
             # Description about CPJ
             h1("Comittee to Protect Journalists"),
             p("When press freedom violations occur, CPJ has correspondents who report and take action on behalf of those targeted. CPJ reports", 
               tags$br("are on violations in repressive countires, conflict zones, and established democracies alike. A board of prominent journalists ",
               tags$br("from around the world helps guide CPJ's activites. They encourage people to contribute to their growing database."))),
             
             # Analysis
             h1("Analysis"),
             p("This data does not appear to be complete, with only 177 countries represented, and comparatively low rates of death despite known censorship conflicts around the world, but it does reflect a pattern within journalist deaths.
                For example, it seems unlikely given Saudi Arabia's strict censorship laws that only 1 journalist had died in 25 years. 
               North Korea doesn't have any recorded incidents, and China's population of nearly 1.4B people has only seen 5 journalists deaths. This pattern is most", 
               tags$br("closely related to internal political conflict & wars going on in these countries that have been highly publicised. Those countries with a greater frequency of these issues",
               tags$br("have the highest reports of journalist deaths when correlated with impunity for murder."))), 
             p("High numbers of unknown source fire indicates a lack of documentation within the data."),
             p("Additionally, there seems to exist un-proportional amounts of reports in more highly publicised countries than others",
               tags$br("suggests that the data is influenced more by events, and not indicative of regular censorship in these countries.")),
             p("There are disproportionately more male journalists than female who were reported as murdered in the data, yet an interesting consistency
               present across genders: print and broadcast journalists are the most targeted, likely as they are the ones in the field."),
             p("The majority of journalist deaths were not preceded by torture, threats, or captivity."),
             p("Journalists who died were more often nationals of the country that they died in rather than those working abroad."),
             tags$br("") 
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
              
              p("- There is a lack of equal representation between male and female journalists - an overwhelming majority of the deaths logged were male.",
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
                tags$br("We found this to be very interesting, as we suspected that a higher amount of individuals would have had something happen to them before death."),
              ##ABBY FIX
              p("The countries with the most journalist deaths are: Iraq, Philippines, and Syria."),
              tags$br())
              
              )
  )
))