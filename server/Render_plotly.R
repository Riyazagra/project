output$age_sex_plotly=renderPlotly({
  df=summary()
  if(input$z=="count"){
      plot_ly(data=df,x=~age,y=~n,type = "box",marker = list(color = ~sex))%>%
      layout(xaxis = list(title = "Age"),
             yaxis = list(title = "Estimated number of injuries"))
  }else{
      plot_ly(data=df,x=~age,y=~rate,type = "box",na.rm=TRUE,marker = list(color = ~sex))%>%
      layout(xaxis = list(title = "Age"),
             yaxis = list(title = "Injuries per 10,000 people"))
  }
})

