library(shiny)
calcBMI <- function(weight,height) (weight /(height*height)*703 )
shinyServer(
        function(input, output) {
                
                output$prediction <- renderPrint({calcBMI(input$weight,input$height)})
        }
)