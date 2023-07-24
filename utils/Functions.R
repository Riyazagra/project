selected = reactive({
  injuries %>% filter(prod_code == input$code)
})