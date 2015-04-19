library(shiny)

shinyUI(pageWithSidebar(
    headerPanel("Calculate your BMI!"),
    sidebarPanel(
        h5('This App calculates you BMI from your weight and your height. 
           Simply use the sliders to indicate your weight and height and 
           select the appropriate gender. The application will then 
           calculate your BMI and based on that and the gender, the App will 
           provide you with information whether the BMI indicates over-,
           normal or underweight.'),
        h3('Answer the following questions:'),
        radioButtons("sex", "Are you male or female?",
                           c("Female", "Male")),
        sliderInput('height', 'How tall are you (in cm)?',
                    value = 170, min = 150, max = 220, step = 1,),
        sliderInput('weight', 'How much do you weigh (in kg)?',
                    value = 80, min = 45, max = 150, step = 1,),
        submitButton('Submit')
    ),
    mainPanel(
        h3('BMI Calculation'),
        h4('Your gender:'),
        verbatimTextOutput("osex"),
        h4('Your height:'),
        verbatimTextOutput("oheight"),
        h4('Your weight:'),
        verbatimTextOutput("oweight"),
        h3('Your BMI is:'),
        verbatimTextOutput("obmi"),
        h3('According to that you are:'),
        verbatimTextOutput("oeval")
    )
))