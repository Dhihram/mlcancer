library(shiny)
modeldt <- readRDS("modeldt.rds")


shinyServer(function(input, output){
  prediction <- reactive({
    pred <- predict(modeldt, newdata = data.frame(
      JK = c(as.factor(input$JK)),
      Usia = c(as.factor(input$Usia)),
      Lokasi = c(as.factor(input$Lokasi)),
      Perluasan = c(as.factor(input$Perluasan)),
      Radiografis = c(as.factor(input$Radiografis)),
      Histopatologis = c(as.factor(input$Histopatologis)),
      Modalitasperawatan = c(as.factor(input$Modalitasperawatan)),
      Rekurensi = c(as.factor(input$Rekurensi))
    ))
    return(pred)
  })
  output$userOutput <-renderText(
    paste("Dari data input, hasil prediksi adalah:",prediction())
  )
  # output$table1 <-renderTable(
  #   if(input$dropdown != "All") {
  #   USArrests[rownames(USArrests) == input$dropdown, ]
  #   } else {
  #     USArrests[USArrests$Murder >= input$slider1[1] &
  #                 USArrests$Murder <= input$slider1[2],]
  #   }
  # output$plotOutput <- renderPlot(
  #   hist(USArrests[,input$kolompilih],
  #        main = paste("Histogram of", input$kolompilih),
  #        breaks = input$binpilih)
  # )
})
