if(file.exists("batchjobs.csv")){
  collected_inputs = reactiveValues(data=read.csv("batchjobs.csv"))
}else{
  collected_inputs <- reactiveValues(data = data.frame(Input1 = numeric(), Input2 = character()))
}
observeEvent(input$act3, {
  # Store the inputs in the reactiveValues data frame
  new_row <- data.frame(Input1 = input$code, Input2 = input$code1, stringsAsFactors = FALSE)
  collected_inputs$data <- rbind(collected_inputs$data, new_row)
  
  write.table(collected_inputs$data,"batchjob.csv",append =  TRUE,sep=",",row.names = FALSE,col.names = FALSE)
})

observeEvent(input$batch_rows_selected,{
  selected_row=input$batch_rows_selected
  if(!is.null(selected_row)){
    selected_values=collected_inputs$data[selected_row,]
    updateSelectInput(session,"input1",value = selected_values$Input1)
    updateNumericInput(session,"input2",value=selected_values$Input2)
  }
})

shiny::onSessionEnded(function(){
  write.table(collected_inputs$data,"batchjob.csv",append =  TRUE,sep=",",row.names = FALSE,col.names = FALSE)
})