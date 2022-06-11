ui <- fluidPage(
  numericInput("wsop_id","WSOP ID",value = 315691),
  DTOutput("wsop_dt")
)