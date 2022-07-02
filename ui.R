ui <- navbarPage(title = "shinyPoker",windowTitle = "shinyPoker",
  theme = shinytheme("yeti"),
  br(),
  h3("WSOP Cash Web Scrap by Player ID"),
  br(),
  br(),
  column(4,
  numericInput("wsop_id","WSOP ID",value = ids[1]),
  selectInput("wsop_name","WSOP Player",choices = names[1])
  ),
  column(8,
  DTOutput("wsop_dt")
  ),
  br(),
  br(),
  column(12,align = "center",
  plotOutput("qrcode", width = "100%", height = "400px")
  )
)
