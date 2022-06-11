ui <- navbarPage(title = "shinyPoker",windowTitle = "shinyPoker",
  theme = shinytheme("yeti"),
  br(),
  h3("WSOP Cash Web Scrap by Player ID"),
  br(),
  br(),
  column(4,
  numericInput("wsop_id","WSOP ID",value = 315691)
  ),
  column(8,
  DTOutput("wsop_dt")
  )
)