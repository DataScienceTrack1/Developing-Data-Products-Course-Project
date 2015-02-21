---
title       : Developing Data Products | Course Project Presentation
subtitle    : 
author      : Data Science Specialization Student
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## The Context 

* This presentation is being created as part of the peer assessment process for the Developing Data Products course offered through Coursera. 

* This assignment is geared toward ensuring the following concepts are well understood by the students:
  + Utilizing **SHINY** to build a data product application.
  + Utilizing **SLIDIFY** or **R PRESENTER** to create a presentation about the data product application developed.

---

## The Application

* To display the understanding of using Shiny to build an application, a simple application to calculate the MPG (miles per gallon) of a hypothetical automobile has been developed and deployed at: 
  + https://datasciencetrack1.shinyapps.io/MPG_Prediction/

* This application allows the user to make calculations for a hypothetical automobile by using a selected model developed from the mtcars dataset in R, then selecting a couple of variables about this hypothetical vehicle.
  + The application produces the resultant estimated MPG (miles per gallon) rating of the hypothetical automobile, in addition to other information about the calculations that led to this MPG valuation.

---

## The Computation

* The application concept is to utilize the mtcars dataset to provide a baseline from which to develop various prediction models for estimating the MPG (miles per gallon) rating of a hypothetical automobile, based on that car's transmission type and number of cylinders.

* Once a model is selected and the transmission type/number of cylinders are selected, a MPG prediction is produced.
  + Further information about this process is explained in the app's documentation.

---

## The Summary

* The computation results in a MPG (miles per gallon) estimate produced from models developed from the mtcars dataset, with additional explanatory information produced that explains how the prediction was actually developed.
*	To summarize, this application has 
  +	Widgets: Dropdowns, radio buttons, summaries, data table, etc.
  +	Some operations on the ui input in server.R
  +	Some reactive output, displayed as a result of server calculations
  +	Documentation support
*	Further development of this app will lead to updates of the data set of automobile information (MPG, Transmission Type, Number of Cylinders, etc.) for automobiles through the year 2015 and beyond, for even more accurate and up-to-date MPG estimate predictions.


