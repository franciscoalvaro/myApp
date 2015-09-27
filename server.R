library(shiny)

futureBalance <- function(current_balance,rate_of_inflation,current_salary,increase_salary,
percentage_monthly_savings,bank_interest,months) current_balance + 
 (1 + bank_interest - rate_of_inflation)*months*
 ((current_salary * (1 + (increase_salary/1200))* percentage_monthly_savings)/1200) 


shinyServer(
function(input, output) {
output$ocurrent_balance <- renderPrint({input$current_balance})
output$orate_of_inflation <- renderPrint({input$rate_of_inflation})
output$ocurrent_salary <- renderPrint({input$current_salary})
output$opercentage_monthly_savings <- renderPrint({input$percentage_monthly_savings})
output$obank_interest <- renderPrint({input$bank_interest})
output$omonths <- renderPrint({input$months})
output$ofuture_balance <- renderPrint({futureBalance(input$current_balance, 
                                                     input$rate_of_inflation,
                                                     input$current_salary,
                                                     input$increase_salary,
                                                     input$percentage_monthly_savings,
                                                     input$bank_interest,
                                                     input$months )})
}
)
