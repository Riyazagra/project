  diag_data=reactive({
    selected() %>% 
    count(diag, wt = weight, sort = TRUE)%>% 
    mutate(Table="Diag")
  })
  body_part_data=reactive({
    selected() %>% 
    count(body_part, wt = weight, sort = TRUE)%>%
    mutate(Table="body_part")
  })
  location_data=reactive({
    selected() %>% 
    count(location, wt = weight, sort = TRUE)%>%
    mutate(Table="location")
  })
  
  output$diag = renderDataTable(options = list(pageLength = 10),{
    diag_data()
  })
  
  output$body_part =renderDataTable(options = list(pageLength = 10),{
    body_part_data()
  })
  output$location = renderDataTable(options = list(pageLength = 10),{
    location_data()
  })
  