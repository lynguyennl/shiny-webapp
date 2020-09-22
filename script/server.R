library(shiny)
library(readxl)

data <- read_excel("C:/Users/Ly Nguyen/Learning/Courses/John Hopkins - R/9. Developing Data Products/shiny webapp 2/data/Book1.xlsx")

shinyServer(function(input, output) {
    display <- reactive({

    sum1 <- reactive({
        f1 <- input$color == data$color[1:nrow(data)]
        sum1 <- 1*f1*data$sum
        sum1 <- sum(sum1)
    })
    
    sum2 <- reactive({
        f2 <- input$mood == data$mood[1:nrow(data)]
        sum2 <- 1*f2*data$sum
        sum2 <- sum(sum2)
    })
    
    sum3 <- reactive({
        f3 <- input$author == data$author[1:nrow(data)]
        sum3 <- 1*f3*data$sum
        sum3 <- sum(sum3)
    })
    
        sum = sum1() + sum2() + sum3()  
        if (sum <= 30) {
            print("never get tired of doing little things for others. sometimes those little things occupy the biggest parts of their hearts.")
        } else if (sum>30 & sum<=60) {
            print("we’re dying on a spinning rock anyway, you may as well try to do the things that make you happy")
        } else if (sum>60 & sum<=90) { 
            print("the shell must break before the bird can fly")
        } else if (sum>90 & sum<=120) {
            print("a diamond is merely a lump of coal that did well under pressure")
        } else {paste("things usually work out in the end. what if they don't?. that just means you haven't come to the end yet")
            }
    })
    
output$text1 <- renderText({ 
    display()
})
})