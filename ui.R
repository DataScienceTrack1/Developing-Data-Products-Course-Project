library(shiny)
shinyUI(pageWithSidebar(
  headerPanel('Automobile MPG Modeling and Prediction App'),
  sidebarPanel(
    helpText('In this Shiny Application, we will create a user-specified linear model for the
             "mtcars" dataset in R, and use it to predict the MPG (miles per gallon) rating of a hypothetical automobile. The output
             on all tabs will be refreshed once a different model is chosen.'),
    radioButtons("model", "Choose a model:",
                 list("MPG vs. AM (Transmission Type) and CYL (Number of Cylinders)" = "amcyl",
                      "MPG vs. AM (Transmission Type), CYL (Number of Cylinders) and their interaction" = "amcylint",
                      "MPG vs. AM (Transmission Type) and GEAR (Number of Forward Gears)" = "amgear",
                      "MPG vs. AM (Transmission Type), GEAR (Number of Forward Gears) and their interaction" = "amgearint",
                      "MPG vs. AM (Transmission Type), CYL (Number of Cylinders) and GEAR (Number of Forward Gears)" = "amcylgear")),
    br(),
    helpText('Once you have your chosen model, the following prediction variables (Transmission Type and Number of Cylinders) can now be entered.'),
    helpText('Please select your values and go to the "Prediction" tab to see the
             predicted MPG (miles per gallon) outcome, based on the current model you have chosen.'),
    conditionalPanel(
      condition = "1 == 1",
      selectInput("tmsn","Transmission",c("Automatic","Manual"),selected = c("Automatic"))
    ),
    conditionalPanel(
      condition = "(input.model == 'amcyl') || (input.model == 'amcylint') || (input.model == 'amcylgear')",
      selectInput("numcyl","No. of Cylinders",c(3,4,5,6,8,9,10,11,12,13,14),selected = c(4))
    ),
    conditionalPanel(
      condition = "(input.model == 'amgear') || (input.model == 'amgearint') || (input.model == 'amcylgear')",
      selectInput("numgear","No. of Gears",c(3,4,5,6,7,8),selected = c(4))
    ),
    br(),
    helpText('The summary for the chosen model will be available by clicking the "Summary" tab.
The mtcars data used to create the model is available for reference in the "Data" tab.')
    ),
  mainPanel(
    tabsetPanel(
      tabPanel('Plots', plotOutput("plot")),
      tabPanel("Prediction", verbatimTextOutput("prediction")),
      tabPanel("Summary", verbatimTextOutput("summary")),
      tabPanel('Data',
               dataTableOutput("mytable"))
    )
  )
  ))