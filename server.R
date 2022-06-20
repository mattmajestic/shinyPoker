server <- function(input,output,session){
  rv <- reactiveValues(id = steins)
  
  output$wsop_dt <- renderDT({
    wsop_html <- read_html(paste0(wsop_url,input$wsop_id))
    
    rv$wsop_data <- wsop_html %>%  
      html_nodes("body") %>% 
      .[[1]] %>% 
      html_table(fill=T)
    datatable(rv$wsop_data)
  })
  output$qRcode <- renderPlot({
    qrcode_gen(paste0(wsop_url,input$wsop_id))
  })
}
