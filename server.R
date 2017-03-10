library(shiny) 

BMI<-function(weight,height) {weight/(height^2)}

calculate_f<-function(weight,height){
  value<-weight/(height^2)
  ifelse(value<18.5,"Underweight",ifelse(value<25,"Normal weight",ifelse(value<30,"Overweight","Obesity")))
}

shinyServer(
        function(input, output) {
                
                output$inputweightvalue <- renderPrint({input$weight})
                output$inputheightvalue <- renderPrint({input$height})
                output$output <- renderPrint({BMI(input$weight,input$height)})
                output$calculate <- renderPrint({calculate_f(input$weight,input$height)})
        } 
)