# Journalist Deaths
This INFO 201 project takes a look at a dataset from Kaggle.com, titled
"[Journalists Killed Worldwide Since 1992](https://www.kaggle.com/qhlearner/journalists-killed-worldwide-since-1992)".
This data has been gathered by the *Committee to Protect Journalists (CPJ)*,
and our project is intended to be read by the general public.

When press freedom violations occur, CPJ mobilizes a network of
 correspondents who report and take action on behalf of those targeted
  (40 experts headquartered in NYC). CPJ reports on violations in
   repressive countries, conflict zones, and established democracies
   alike. A board of prominent journalists from around the world helps
   guide CPJ's activities, and their work has enabled us to do this project.

## Link to the Shiny App
[Journalist Deaths Since 1992](https://abhuang.shinyapps.io/journalistDeaths/)

## Author's Names
Abby Huang, Ally Picker, Michael Bradley, Sophie Crane

## Domain

The Committee to Protect Journalists started collecting unique data on journalist’s deaths in 1992 with the focus on motive - if it was job related or not. Journalism plays a vital role in the balance of power between governments and people by freely reporting the stories and indecencies that happen to the world. **To silence journalists is to silence the people**.

By tracking the brute injustice that inflicts journalists all over the world doing their jobs, CPJ is protecting the freedom of expression and democracy. CPJ has called together an international community that protects the free flow of news and commentary by publicizing and taking action against the systems that allow journalists to be attacked, imprisoned, killed, kidnapped, threatened, censored or harassed.  As such, it has launched a global campaign against impunity, especially in countries where there exist high rates of murder of journalists and low conviction rates.

With the collection of this information on the characters afflicted, the country they were killed in, the method killed, the organizations responsible but not held responsible, the reporter’s nationality, their job title, their type of coverage, etc., the bigger picture of these injustices to the free media becomes ever clearer. CPJ encourages professionals and citizen journalists to recognize the threats this has on modern democracy and to pay attention to the increasing numbers by sharing their stories.

The data CPJ has collected says a lot about the significant events in history,  the responses made by individual countries, and by thus the world’s response.

## Technical Aspects
The incompleteness of the data set was a big challenge. To counteract
that, we had to go in and edit some of the data, and some of our code
also had to deal with these anomalies. For example:
* We inserted 'NA' into the many blank spots in the .csv file
* We had to change the different spellings of countries within
a single columns
* We had to merge our country name data with standardized country codes using that package in R and iso_a2 coding
* We learned how to incorporate leaflet and a Mapbox API for the interactive world map, feeding it specific country data standardized to country codes
* We used plotly for the creation of our pie charts, as Base-R pie charts
pale in comparison in terms of visuals and customizability

## Languages
For this project, we used R.

## Packages
* dplyr
* shiny
* plyr
* lubridate
* plotly
* data.table
* geojson
* geojsonio
* couontrycode
* rgdal
* jsonlite
* leaflet

## Brief Overview of files
* server.R : the server file has the outputs that will be on the shiny project.

* ui.R : the ui file formats the shiny page.

* data_manipulation_cpj.R : The data manipulation file is where we calculated our functions and graphs.

* cpj.csv : This file is the file with the data of the journalists.

* tempgeoworld.json : This file is the data we used for the map.
