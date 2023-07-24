output$diag = renderDataTable(options = list(pageLength = 10),{
  selected() %>% count(diag, wt = weight, sort = TRUE)
})

output$body_part =renderDataTable(options = list(pageLength = 10),{
  selected() %>% count(body_part, wt = weight, sort = TRUE)
})
output$location = renderDataTable(options = list(pageLength = 10),{
  selected() %>% count(location, wt = weight, sort = TRUE)
})


