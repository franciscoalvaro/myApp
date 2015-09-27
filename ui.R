library(Ç2shiny")


shinyUI(fluidPage(

  # Application title
  titlePanel("SAVINGS CALCULATOR"),

sidebarPanel(
numericInput('current_balance', 'Current_balance', 0, min = 0, max = 200000, step = 1000),
numericInput('rate_of_inflation', 'Rate of inflation', 0, min = -5, max = 20, step = 0.1),
numericInput('current_salary', 'Salary currently', 30000, min = 18000, max = 100000, step = 1000),
numericInput('increase_salary', 'Percentage of salary increase', 2, min = -5, max = 10, step = 0.1),
numericInput('percentage_monthly_savings', 'Percentage of monthly savings', 10, min = 0, max = 100, step = 1),
numericInput('bank_interest', 'Bank_interest', 1, min = 0, max = 20, step = 0.1),
sliderInput("months",
                  "Number of months:",
                  min = 1,
                  max = 480,
                  value = 12)
),

    mainPanel(
       h4('Current balance'),
       verbatimTextOutput("ocurrent_balance"),
       h4('Current salary'),
       verbatimTextOutput("ocurrent_salary"),
       h3('Future balance'),
       verbatimTextOutput("ofuture_balance"),
       h4(' '),
       h4(' '),
      


       h4('Tutorial'),

       h5(' This application is a savings calculator. It takes into account several key factors, such as current balance, current salary, the percentage of salary that goes to savings, inflation, the bank rate and annual wage increases.
By slide the user can set the number of months from the present to calculate their savings when considering the above variables.'),
h5(' '),
h5('It is assumed that throughout the period considered these variables remain constant. '),
h5(' '),
h5('Some variables, such as inflation and wage growth may be negative.The final calculation appears on Future balance section. ')
    )
  
))
