library(shiny) 

shinyUI(

        pageWithSidebar(

                # Application title
                headerPanel("Body Mass Index (BMI) Calculator"),
                
                sidebarPanel(
		    helpText("This app calculates BMI - Body Mass Index based on your inputs."),
                        numericInput('weight', 'Insert your weight (kilograms)', 0),
                        numericInput('height', 'Insert your height (metres)', 0, min = 0.2, max = 3, step = 0.01),
                        submitButton('Submit')
                 ), 

                    mainPanel(

			tabsetPanel(
                           tabPanel("BMI Calculator",
                              h4(('Your BMI is:'),style = "color:blue"),
                              verbatimTextOutput("output"),
                              h4(('Your category:'),style = "color:magenta"),
                              strong(verbatimTextOutput("calculate"))
			   ),
			   tabPanel("Documentation",
			   p(h4("Simple BMI Calculator:")),
                           helpText("This application calculates BMI of person for given height and weight. To calculate your BMI, enter your height(in metres) and weight(in KG) in the form."),
			   p(h4("What is BMI?")),
			   helpText("BMI means Body Mass Index. The BMI shows the relation between a person's height and weight, 
				    and can be used to indicate whether the person has a normal weight or if he/she is underweight or overweight. 
				    BMI can also be called the Quetelet index, after its inventor, the Belgian scientist Adolphe Quetelet (1796-1874)"),
                           helpText("Regarding the BMI measure, the World Health Organization (WHO) proposes the following classification:"),
			   helpText("[<18.5] : Underweight"),
			   helpText("[18.5-24.9] : Normal weight"),
			   helpText("[25-29.9] : Overweight"),
			   helpText("[>=30] : Obesity"),
			    HTML("<u><b>Equation for calculation: </b></u>
                       		 <br> <br>
                        		<b> BMI = W /(H * H) </b>
                       		 <br>
                       		 where: <br>
                        	 BMI = Body Mass Index <br>
                        	 W = Weight in KG <br>
                        	 H = Height in metres")                
			   )
                        )
                    )
       )   
)