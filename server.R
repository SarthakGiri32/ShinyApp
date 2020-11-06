library(shiny)
shinyServer(function(input, output) {
    modelTime <- lm(eruptions ~ waiting, data = faithful)
    
    modelTimePred <- reactive({
        waitTimeInput <- input$sliderWaiting
        predict(modelTime, newdata = data.frame(waiting = waitTimeInput))
    })
    
    output$plotTime <- renderPlot({
        waitTimeInput <- input$sliderWaiting
        
        plot(faithful$waiting, faithful$eruptions, 
             xlab = "Waiting Times", ylab = "Eruption Times", 
             main = "Old Faithful Geyser", bty = "n", pch = 16, 
             xlim = c(40, 100), ylim = c(1, 6))
        if(input$showPredict){
            abline(modelTime, col = "red", lwd = 2)
        }
        legend(25, 250, c("Model Prediction"), pch = 16, 
               col = c("red"), bty = "n", cex = 1.2)
        points(waitTimeInput, modelTimePred(), col = "red", pch = 16, 
               cex = 2)
    })
    
    output$predTime <- renderText({
        modelTimePred()
    })
})