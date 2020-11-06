library(shiny)
shinyUI(fluidPage(
    titlePanel("Predict Eruption Time from Waiting Time for a Geyser
               Eruption"),
    sidebarLayout(
        sidebarPanel(
            sliderInput("sliderWaiting", "Select a Waiting Time for the 
                        Geyser", 43, 96, value = 60),
            checkboxInput("showPredict", "Show/Hide Model Prediction", 
                          value = TRUE),
            submitButton("Submit Changes")
        ),
        mainPanel(
            plotOutput("plotTime"),
            h3("Predicted Eruption Time from the Model:"),
            textOutput("predTime"),
        )
    )
))