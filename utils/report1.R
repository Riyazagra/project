observeEvent(input$report1,({
  ppt=read_pptx()
      slide1=add_slide(layout = "Title and Content",master="Office theme")%>%
        ph_with(ph_location_type("body"),slide,diag_data(),slide1)
      
      slide2=add_slide(layout = "Title and Content",master="Office theme")%>%
        ph_with(ph_location_type("body"),slide,body_part_data(),slide2)
      
      slide3=add_slide(layout = "Title and Content",master="Office theme")%>%
        ph_with(ph_location_type("body"),slide,location_data(),slide3)

    return(Final_report)
      
}))
