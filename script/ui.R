library(shiny)
    shinyUI(fluidPage(
        titlePanel("Answer 3 questions, I will give you a quote (:"),
        sidebarLayout(
            sidebarPanel(
                radioButtons("color", label = "Choose your favourite color group", 
                             choices = data$color,
                             selected = NULL, width='1000px'),
                
                radioButtons("mood", label = "How are you feeling right now?", 
                             choices = data$mood,
                             selected = NULL, width='1000px'),
                
                radioButtons("author", label = "Who is your favourite author?",
                             choices = data$author, 
                             selected = NULL, width='1000px'), 
                
                submitButton(text="Give me a quote")
            ), 
                
                mainPanel(
                    h3("a quote for you"),
                    textOutput("text1"),
                    tags$head(tags$style("#text1{color: navy;
                                 font-size: 20px;
                                 font-style: italic;
                                 }"
                    )
                    )
                )
            )
        ))