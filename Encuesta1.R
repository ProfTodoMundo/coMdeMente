library(shiny)

ui <- fluidPage(
  titlePanel("Selección de Tema de Encuesta"),
  sidebarLayout(
    sidebarPanel(
      selectInput("tema", "Selecciona un tema:", 
                  choices = c(
                    "Miedo al abandono",
                    "Felicidad autoimpuesta, Miedo al fracaso, Sociedad obsesionada con el éxito",
                    "La dificultad para 'dejar ir'",
                    "Incapacidad para relacionarse afectivamente con otros.",
                    "Ambiente laboral hostil y acoso en el trabajo.",
                    "Tipos de apego en la relación, responsabilidad afectiva",
                    "'Ghosting'; desaparecer o cortar contacto de forma abrupta y sin explicación",
                    "Trastornos de la Conducta Alimentaria",
                    "Ansiedad",
                    "Deprimido y no sé por qué",
                    "Estrés y escuela, estrés y familia, estrés y pareja",
                    "Manejo de emociones",
                    "Efectos del clasismo en la salud mental",
                    "Prevención del feminicidio",
                    "Qué son los trastornos mentales",
                    "¿Esquizofrenia, por qué se presenta?",
                    "Síndrome de Asperger, de qué estamos hablando",
                    "Qué es el TOC (Trastorno Obsesivo Compulsivo)",
                    "Demencia ¿tema de adultos mayores?"
                  )),
      actionButton("mostrar", "Mostrar tema seleccionado")
    ),
    mainPanel(
      textOutput("tema_elegido")
    )
  )
)

server <- function(input, output) {
  observeEvent(input$mostrar, {
    tema_elegido <- input$tema
    output$tema_elegido <- renderText({
      paste("Tema seleccionado:", tema_elegido)
    })
  })
}

shinyApp(ui, server)
