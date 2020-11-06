Pitch for Predictor App
========================================================
author: Sarthak Giri
date: 6/11/2020
autosize: true

The Pitch
========================================================

The app creates a linear regression model which predicts the eruption 
duration from the waiting time, and the fitted line from the
model accurately summarizes the relationship between the variables, as you
will see next.

Creating the model
========================================================


```r
# fitting a linear regression model
timeFit <- lm(eruptions ~ waiting, faithful)
summary(timeFit)$coef
```

```
               Estimate  Std. Error   t value      Pr(>|t|)
(Intercept) -1.87401599 0.160143302 -11.70212  7.359171e-26
waiting      0.07562795 0.002218541  34.08904 8.129959e-100
```

Plotting the model and the Eruption Duration vs Waiting Time
========================================================


```r
# plotting the eruption times vs waiting times, and showing fitted
# model line
plot(faithful$waiting, faithful$eruptions, xlab = "Waiting Time",
     ylab = "Eruption Duration")
abline(timeFit, col = "red", lwd = 3)
```

The plot is shown in the next slide

Continued
========================================================
title: false

![plot of chunk unnamed-chunk-3](AppPitch-figure/unnamed-chunk-3-1.png)
