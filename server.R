server <- function(input,output,session){
  rv <- reactiveValues(id = ids[1])
  
  output$wsop_dt <- renderDT({
    wsop_html <- read_html(paste0(wsop_url,input$wsop_id))
    
    rv$wsop_data <- wsop_html %>%  
      html_nodes("body") %>% 
      .[[1]] %>% 
      html_table(fill=T)
    datatable(rv$wsop_data)
  })
  
  output$qrcode <- renderPlot({
    
    input$wsop_id

    p <- qrcode_gen(paste0(wsop_url,input$wsop_id), dataOutput = TRUE)
    
    return(
      heatmap(p[nrow(p):1, ], Rowv = NA,
              Colv = NA, scale = "none",col = c("black", "white"),
              labRow = "", labCol = "")
    )
  })
}
