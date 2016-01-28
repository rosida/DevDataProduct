library(shiny)

calcBMI<-function(a,b) {a/(b*b)}

server <- function(input, output) {
  output$meter<-renderPrint(input$height/100)
  output$kg<-renderPrint(input$weight)
  output$BMI<-renderPrint({calcBMI(input$weight,input$height/100)})
  
}
shinyApp(ui = ui, server = server)