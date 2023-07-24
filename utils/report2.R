observeEvent(input$report2,({
  slide_graph=ppt%>%
    add_slide(layout="Title and Content",master = "Office Theme")%>%
    ph_with_gg(
      plot(if (input$y == "count") {
        summary() %>%
          ggplot(aes(age, n, colour = sex)) +
          geom_line()+
          labs(y = "Estimated number of injuries")+theme_classic()
      } else {
        summary() %>%
          ggplot(aes(age, rate, colour = sex)) +
          geom_line(na.rm = TRUE) +
          labs(y = "Injuries per 10,000 people")+theme_classic()
      }
,res = 96,width=600))
  })
)

