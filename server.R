library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
    
    # Funcion Lanzamiento de Dados
    output$plot  <- renderPlot(
        {
            nosim <- input$nosim
            n <- input$samples
            
            
                set.seed(2604)
                sim <- sample(1:6, nosim * n, replace = TRUE)
                sims <- matrix(sim, nosim)
                media<-round(apply(sims, 1,mean),2)
                
          
            plot(table(media)/nosim, type='h', lwd=5, xlab = 'Numero de muestras', ylab='Numero de Simulaciones', col='red')
            
        }
    )
    
    # Funcion Lanzamiento de Moneda
    output$plot1  <- renderPlot(
        {
            nosim <- input$nosim1
            n <- input$samples1
            
                set.seed(2604)
                sim <- sample(0:1, nosim * n, replace = TRUE)
                sims <- matrix(sim, nosim)
                media<-round(apply(sims, 1,mean),2)
            
    
                plot(table(media)/nosim, type='h', lwd=5, xlab = 'Numero de muestras', ylab='Numero de Simulaciones', col='green')
            
        }
    )
    
    # Funcion Exponencial
    output$plot2  <- renderPlot(
        {
            nosim <- input$nosim2
            n <- input$samples2
            
            set.seed(2604)
            sim <- rexp(n*nosim)
            sims <- matrix(sim, nosim)
            media<-round(apply(sims, 1,mean),2)
            
            
            plot(table(media)/nosim, type='h', lwd=1, xlab = 'Numero de muestras', ylab='Numero de Simulaciones', col='blue')
            
        }
    )
    
    # Funcion Poisson
    output$plot3  <- renderPlot(
        {
            nosim <- input$nosim3
            n <- input$samples3
            
            set.seed(2604)
            sim <- rpois(n*nosim, lambda = 1)
            sims <- matrix(sim, nosim)
            media<-round(apply(sims, 1,mean),2)
            
            
            plot(table(media)/nosim, type='h', lwd=5, xlab = 'Numero de muestras', ylab='Numero de Simulaciones', col='orange')
            
        }
    )
    
}
)