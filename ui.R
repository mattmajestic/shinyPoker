ui <- fluidPage(
  theme = shinytheme("united"),
  br(),
  br(),
  h3("WSOP Cash Web Scrap by Player ID"),
  column(4,
  numericInput("wsop_id","WSOP ID",value = 315691)
  ),
  column(8,
  DTOutput("wsop_dt")
  )
)