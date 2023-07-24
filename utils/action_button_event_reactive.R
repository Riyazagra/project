selected = eventReactive(input$act,{
  withProgress(message = "processing", {
    for (i in seq_len(input$act)) {
      Sys.sleep(0.5)
      incProgress(1 / input$act)
    }
    runif(1)
  })
  injuries %>% filter(prod_code == input$code)
})