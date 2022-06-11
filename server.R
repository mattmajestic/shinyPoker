server <- function(input,output,session){
  rv <- reactiveValues(id = input$wsop_id)
  
  output$wsop_dt <- renderDT({
    wsop_html <- read_html(paste0(wsop_url,rv$id))
    
    wsop_data <- wsop_html %>%  
      html_nodes("body") %>% 
      .[[1]] %>% 
      html_table(fill=T)
    read_xml(paste0(wsop_url,rv$id))
    datatable(wsop_data)
  })
  
}
