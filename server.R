day_distance <- function(date) {
  new_date <- as.Date(date, format="%Y-%m-%d")
  today <- Sys.Date()
  return(abs(new_date-today))
}

sundays <- function(date) {
  new_date <- as.Date(date, format="%Y-%m-%d")
  today <- Sys.Date()
  
  if (today > new_date){
    days_seq <- seq(new_date, today, by="days")
  } else {
    days_seq <- seq(today, new_date, by="days")
  }
  
  weekdays_seq <- weekdays(days_seq)
  sundays <- sum(weekdays_seq == "Sunday")
  
  return(sundays)
  
}

shinyServer(function(input, output){
  
  output$days <- renderText({
    paste("There are ", day_distance(input$date), " days between today and ", input$date)
  })
  output$sundays <- renderText({
    paste("Of which ", sundays(input$date), "Sundays")
    })
  
})
