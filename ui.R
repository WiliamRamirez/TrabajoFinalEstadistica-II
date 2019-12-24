library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    tags$head(
        tags$style(
        HTML("
      @import url('//fonts.googleapis.com/css?family=Lobster|Cabin:400,700');
      
     .prueba {
        background-color: #333333;

      }
      .title {
        
        font-size: 60px;
        font-family: 'Lobster', cursive;
        color: #99ccff;
        text-align: center;
        text-shadow: 3px 2px grey;
      }
      
      .subtitulo{
          font-size: 25px;
          font-family: 'Times New Roman', cursive;
          color: #ff6666;
          text-shadow: 1px 1px grey;
        
      }
      
      .subtitulo{
          font-size: 25px;
          font-family: 'Times New Roman', cursive;
          color: #ff6666;
          text-shadow: 1px 1px grey;
        
      }
      
      .subtitulo1{
          font-size: 25px;
          font-family: 'Times New Roman', cursive;
          color: #99ff99;
          text-shadow: 1px 1px grey;
        
      }
      
      .subtitulo2{
          font-size: 25px;
          font-family: 'Times New Roman', cursive;
          color: #99ccff;
          text-shadow: 1px 1px grey;
        
      }
      
      .subtitulo3{
          font-size: 25px;
          font-family: 'Times New Roman', cursive;
          color: #ffbb99;
          text-shadow: 1px 1px grey;
        
      }
      
      .subtituloGrafico{
          font-size: 50px;
          font-family: 'Times New Roman', cursive;
          text-align: center;
          color: #ff6666;
          text-shadow: 2px 2px grey;
        
      }
      
      .subtituloGrafico1{
          font-size: 50px;
          font-family: 'Times New Roman', cursive;
          text-align: center;
          color: #99ff99;
          text-shadow: 2px 2px grey;
        
      }
      
      .subtituloGrafico2{
          font-size: 50px;
          font-family: 'Times New Roman', cursive;
          text-align: center;
          color: #99ccff;
          text-shadow: 2px 2px grey;
        
      }
      
      .subtituloGrafico3{
          font-size: 50px;
          font-family: 'Times New Roman', cursive;
          text-align: center;
          color: #ffbb99;
          text-shadow: 2px 2px grey;
        
      }
      
      .select {
        padding: 1rem;
        display: block;
        width: 100%;
        background-color: #e1e1e1;
        margin-bottom: 2rem;
        border: none;
        border-radius: 1rem;
      }
      .select1 {
        padding: 1rem;
        display: block;
        width: 100%;
        background-color: #b3d1ff;
        margin-bottom: 2rem;
        border: none;
        border-radius: 1rem;
      }
              

    "))
    ),
    

    # Sidebar with a dropdown for choice of distribution,
    # along with sliders for the number of simulations and 
    # the number of random samples in each simulation
    tags$div(class="prueba",
             tags$h1(class="title", "Demostracion del Teorema Central del Limite"),
             fluidPage(navlistPanel(
               tabPanel("Lanzamiento de Dados",
                        
                        
                        
                        tags$div(class="select",
                                 sliderInput
                                 ("nosim", tags$p(class="subtitulo", "Numero de Simulaciones:"), 100, 10000, 100, step = 100),
                                 sliderInput
                                 ("samples",tags$p(class="subtitulo", "Numero de Muestras:"), 1, 40, 1, step = 1, animate = TRUE),
                                 tags$p(class="subtituloGrafico", "Graficando"),
                                 plotOutput("plot")),
                        
               ),
               tabPanel("Lanzamiento de moneda",
                        
                        tags$div(class="select", sliderInput
                                 ("nosim1", tags$p(class="subtitulo1", "Numero de Simulaciones:"), 100, 10000, 100, step = 100),
                                 sliderInput
                                 ("samples1", tags$p(class="subtitulo1", "Numero de Muestras:"), 1, 40, 1, step = 1, animate = TRUE),
                                 tags$p(class="subtituloGrafico1", "Graficando"),
                                 plotOutput("plot1")),
                       
                        
               ),
               
               tabPanel("Exponencial",
                        
                        tags$div(class="select", sliderInput
                                 ("nosim2", tags$p(class="subtitulo2", "Numero de Simulaciones:"), 100, 10000, 100, step = 100),
                                 sliderInput
                                 ("samples2", tags$p(class="subtitulo2", "Numero de Muestras:"), 1, 40, 1, step = 1, animate = TRUE),
                                 tags$p(class="subtituloGrafico2", "Graficando"),
                                 plotOutput("plot2")),

                        
               ),
               tabPanel("Poisson",
                        
                        tags$div(class="select", sliderInput
                                 ("nosim3", tags$p(class="subtitulo3", "Numero de Simulaciones:"), 100, 10000, 100, step = 100),
                                 sliderInput
                                 ("samples3", tags$p(class="subtitulo3", "Numero de Muestras:"), 1, 40, 1, step = 1, animate = TRUE),
                                 tags$p(class="subtituloGrafico3", "Graficando"),
                                 plotOutput("plot3")),
                        
                        
               ),
               tabPanel(tags$img(src="logoUnsch.jpg", width = "400px", height = "530px"),
                        
                        tags$div(class="select",
                                 tags$p(class="subtituloGrafico3", "Integrantes"),
                                 tags$p(class="subtitulo3", "Alminagorta Palomino Angiela"),
                                 tags$p(class="subtitulo3", "Huaman Munioz Joel"),
                                 tags$p(class="subtitulo3", "Ramirez Gutierrez Wiliam"),
                                 tags$p(class="subtitulo3", "Solis Navarro Luis Fernando"),
                                 tags$img(src="logo.png", width = "600px", height = "465px"),
                                
                                 )
                        
                        )
               
               
             )
             
             ),
             ),
    
    
))