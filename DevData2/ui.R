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
        
        fluidPage(
            titlePanel("BC Liquor Store prices"),
            sidebarLayout(
                sidebarPanel("This application allows you to create a graph based on the data available in BCL dataset.
                             This has been developed using the guide in this website, you may also download the data set here. 
                             https://deanattali.com/blog/building-shiny-apps-tutorial/",
                             sliderInput("priceInput", "Price - Slide to the desired amount", min = 0, max = 100, value = c(25, 40), pre = "$"),
                             radioButtons("typeInput", "Product type - Select the type of beverage",choices = c("BEER", "REFRESHMENT", "SPIRITS", "WINE"),selected = "WINE"),
                             selectInput("countryInput", "Country - Select the country",choices = c("CANADA", "FRANCE", "ITALY"))
                ),
                mainPanel(plotOutput("coolplot"),br(),br(),tableOutput("results")
                )
            )
        )
    )
)
