library(shiny)
shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Body Mass Index (BMI) Calculator"),
                sidebarPanel(
                        numericInput('weight', 'Weight (lbs)', 150, min = 50, max = 300, step = 1),
                        numericInput('height', 'Height (in)', 70, min = 36, max = 90, step = 1),
                        submitButton('Submit'),
                        h3('Instructions for Use'),
                        p("Input weight in pounds and height in inches in the boxes above.  Your BMI will be computed when 
                          you hit the submit button.")
                ),
                mainPanel(
                        
                        h3('Your BMI '),
                        verbatimTextOutput("prediction")
                )
        )
)