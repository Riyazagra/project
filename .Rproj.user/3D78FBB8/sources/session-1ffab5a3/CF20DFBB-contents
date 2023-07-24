output$download=downloadHandler(
  filename = function(){
    if(input$tabless=="Diag"){
      "Diag_table.csv"
    }else if(input$tabless=="body_part"){
      "body_part.csv"
      }else{
        "location.csv"
      }
  },
  content = function(file){
    if(input$tabless=="Diag"){
      write.csv(diag_data(),file,row.names = FALSE)
    }else if(input$tabless=="body_part"){
      write.csv(body_part_data(),file,row.names = FALSE)
    }else{
      write.csv(location_data(),file,row.names = FALSE)
    }
  }
)