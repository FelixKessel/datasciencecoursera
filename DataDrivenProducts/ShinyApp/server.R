library(shiny)

bmi <- function(weight, height) weight / (height / 100)^2

eval <- function(weight, height, gender) {
    bmi <- weight / (height / 100)^2
    if (gender == 'Female'){
        if(bmi < 19) {
            eval = 'underweight'
        } else if (bmi <= 24){
            eval = 'normal weight'
        } else {eval = 'overweight'}
    } else {
        if(bmi < 20) {
            eval = 'underweight'
        } else if (bmi <= 25){
            eval = 'normal weight'
        } else {eval = 'overweight'}
    }
    return(eval)
}

shinyServer(
    function(input, output) {
        output$osex <- renderPrint({input$sex})
        output$oweight <- renderPrint({input$weight})
        output$oheight <- renderPrint({input$height})
        output$obmi <- renderText({bmi(input$weight, input$height)})
        output$oeval <- renderPrint({eval(input$weight, input$height, input$sex)})
    }
)

