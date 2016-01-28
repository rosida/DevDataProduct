library(shiny)
ui <- fluidPage(
 titlePanel("Body Mass Index (BMI) Calculator"),
 sidebarLayout(
   sidebarPanel(
     sliderInput(inputId = "weight", label = "Input Weight (kg)", value =54, min=30, max =200), 
     numericInput (inputId = "height", label = "Input Height (cm)", value =153, min=80, max =200),
     submitButton("Calculate"),
     
     h3("BMI Classification"),
     h4("18.5 or less	  Underweight"),
     h4("18.5 to 24.99	Normal Weight"),
     h4("25 to 29.99	  Overweight"),
     h4("30 to 34.99	  Obesity (Class 1)"),
     h4("35 to 39.99	  Obesity (Class 2)"),
     h4("40 or greater	Morbid Obesity")
   ),
   mainPanel(
     h3("Height (m) "),
     h4("You Entered :"),
     verbatimTextOutput("meter"),
     
     h3("Weight (kg) "),
     h4("You Entered :"),
     verbatimTextOutput("kg"),
     
     h3("Your BMI is:"),
     verbatimTextOutput("BMI")
    
   )
 )
 )

