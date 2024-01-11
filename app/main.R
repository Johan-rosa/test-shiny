box::use(
  shiny[...],
)

#' @export
ui <- function(id) {
  ns <- NS(id)
  bootstrapPage(
    textInput(ns("name"), "What is your name?"),
    actionButton(ns("greet"), "Greet"),
    textOutput(ns("greeting"))
  )
}

#' @export
server <- function(id) {
  moduleServer(id, function(input, output, session) {
    output$greeting <- renderText({
      req(input$greet)
      paste0("Hello ", isolate(input$name), "!")
    })
  })
}
