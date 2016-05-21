shinyUI(fluidPage(
  
  titlePanel("(Sun)Day distance"),
  helpText("I will give you the number of days and Sundays between today and the date you select"),
  
  sidebarPanel(
    dateInput("date", label="Insert a date"),
    submitButton("Go")
    ),
  
  mainPanel(
    verbatimTextOutput("days"),
    verbatimTextOutput("sundays")
    
    )
  
  ))