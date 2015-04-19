library(shiny)

setwd("C:\\Users\\Felix\\Desktop\\coursera\\DataDrivenProducts\\ShinyApp")
runApp()


install.packages('devtools')
devtools::install_github('rstudio/shinyapps')
shinyapps::setAccountInfo(name='fkessel', token='650E09BBF88105F00D8CF18E7CBF7912', secret='b5OG5b1zA8f/OgaUhs11wLyYbrKMA/J19cnzAQGm')

library(shinyapps)
shinyapps::deployApp('C:\\Users\\Felix\\Desktop\\coursera\\DataDrivenProducts\\App')
