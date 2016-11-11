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
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Mtcars Data Plotter"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
        selectInput("yvar", "y-axis:",
                    c("Miles Per Gallon" = "mpg",
                      "Cylinders" = "cyl",
                      "Displacement" = "disp",
                      "Horsepower" = "hp",
                      "Rear Axel Ratio" = "drat",
                      "Weight" = "wt",
                      "1/4 Mile Time" = "qsec",
                      "V/S" = "vs",
                      "Transmission" = "am",
                      "Gears" = "gear",
                      "No. of Carburetors" = "carb")
                    ),
        selectInput("xvar", "x-axis:",
                    c("Horsepower" = "hp",
                      "Miles Per Gallon" = "mpg",
                      "Cylinders" = "cyl",
                      "Displacement" = "disp",
                      "Rear Axel Ratio" = "drat",
                      "Weight" = "wt",
                      "1/4 Mile Time" = "qsec",
                      "V/S" = "vs",
                      "Transmission" = "am",
                      "Gears" = "gear",
                      "No. of Carburetors" = "carb")
        ),
       checkboxInput("trend","Show/Hide Trend")
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot"),
       textOutput("trenddetails")
    )
  )
))
