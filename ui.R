
shinyUI(fluidPage(
  titlePanel(strong("Kalkulator Risiko Rekurensi Ameloblastoma")),
  p(em("oleh Dhihram Tenrisau")),
  sidebarLayout(
    sidebarPanel(
      textOutput("userOutput")
      # textInput("userInput", 'Isi teks:'),
      # selectInput("kolompilih", "Pilih Kolom:",
      #             choices = names(USArrests)
      # ),
      # sliderInput('binpilih', 'Pilih Angka Bin:',
      #             min=2, max=12, value=6, step=2)
      # #               ),
      # # # sliderInput('slider 1', 'Filter angka Murder',
      # #             min = 0, max = max(USArrests$Murder),
      # #             value = c(0,10)
      # #             )
    ),
    mainPanel(
      selectInput("JK", label = "Jenis Kelamin:",
                  choices = list("Laki-laki" = "Laki-laki", "Perempuan" = "Perempuan")),
      selectInput("Usia", label = "Usia:",
                  choices = list("<=20tahun" = "<=20tahun", "21-40tahun" = "21-40tahun", "41-60tahun" = "41-60tahun")),
      selectInput("Lokasi", label = "Lokasi:",
                  choices = list("Multilokular", "Unilokular")),
      selectInput("Perluasan", label = "Perluasan:",
                  choices = list("Stage_2", "Stage_1")),
      selectInput("Radiografis", label = "Radiografis:",
                  choices = list("Multilokular", "Unilokular")),
      selectInput("Histopatologis", label = "Histopatologis:",
                  choices = list("Folikular", "Pleksiform", "Akantomatosa", "Desmoplastik", "Campuran", "Unikistik")),
      selectInput("Modalitasperawatan", label = "Modalitas Perawatan:",
                  choices = list("Konservatif", "Radikal")),
      selectInput("Rekurensi", label = "Rekurensi:",
                   choices = NULL),
      submitButton("Prediksi!")
                  
      )
      # plotOutput('plotOutput')
      #tableOutput("table1")
    )
  )
)

