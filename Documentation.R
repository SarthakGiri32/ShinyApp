#' Building a Prediction Model  
#' 
#' Predicting Duration of Eruptions for a Geyser from the Waiting Time 
#' between Eruptions for the Old Faithful Geyser.  
#' 
#' @param sliderWaiting a value of the waiting time between 43 minutes and 
#' 96 minutes, which will be used to predict a new duration of eruption of 
#' the geyser from the model  
#' @param showPredict a check-box that when selected, will show the fitted 
#' line from the model  
#' @return a plot of the available duration of eruptions vs the waiting time
#' between eruptions (plotTime), and a new predicted duration of 
#' eruption from the new value entered for the waiting time (predTime). The
#' new duration of eruption is shown both on the plot, and as text below the
#' plot.  
#' 
#' In the app, in the side-bar panel just select a waiting time value from 
#' the slider, then select the check-box to show or hide the fitted line, 
#' and then click on "Submit Changes" to confirm your changes, and you will 
#' see the effect of your changes on the main panel.
