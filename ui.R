## ui.R file for the shiny app pertaining to Coursera Project "Developing Data Products"

# shiny UI function
shinyUI(
  navbarPage("Best Car for a Trip in MTCARS",
       tabPanel("Home",
                sidebarLayout(
                  # Sidebar panel
                  sidebarPanel(
                    numericInput('dis', 'Distance (miles):', 60, min = 1, max = 1000),
                    numericInput('cost', 'Gasoline Price (gallon):', 2.6, min = 2, max = 4, step=0.01),
                    numericInput('gas', 'Maximum expenditure on gasoline:', 100, min=1, max=1000),
                    checkboxGroupInput('cyl', 'Number of cylinders:', c("Four"=4, "Six"=6, "Eight"=8), selected = c(4,6,8)),
                    sliderInput('disp', 'Displacement:', min=70, max=480, value=c(70,480), step=10),
                    sliderInput('hp', 'Gross horsepower:', min=50, max=340, value=c(50,340), step=10),
                    checkboxGroupInput('am', 'Transmission:', c("Automatic"=0, "Manual"=1), selected = c(0,1))
                  ),

                  # Main panel
                  mainPanel(
                    dataTableOutput('table')
                  )
                )
       ),

       tabPanel("Getting Started",
                mainPanel(
                  includeMarkdown("getting_started.md")
                )
       )
   )
)
