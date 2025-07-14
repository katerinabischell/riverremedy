# Bolivia Pilcomayo Heavy Metals Study - Shiny App
# Load required libraries
library(shiny)
library(shinydashboard)
library(DT)
library(plotly)
library(tidyverse)
library(scales)
library(shinycssloaders)
library(shinythemes)
library(bslib)

# Define UI
ui <- page_navbar(
  title = "Bolivia Pilcomayo Heavy Metals Study",
  theme = bs_theme(
    bootswatch = "lux",
    base_font = font_google("Inter")
  ),
  
  # Tab 1: Overview
  nav_panel(
    title = "Overview",
    icon = icon("chart-line"),
    
    fluidRow(
      column(12,
             div(
               class = "jumbotron",
               h1("Bolivia Pilcomayo Heavy Metals Study", 
                  class = "display-4"),
               p("Comprehensive analysis of heavy metal contamination in the Pilcomayo River basin, Bolivia (2006)",
                 class = "lead"),
               hr(),
               p("This dashboard presents critical environmental and public health findings from water, soil, sediment, vegetation, fish, human, and animal samples.")
             )
      )
    ),
    
    fluidRow(
      column(3,
             div(
               class = "card border-danger",
               div(class = "card-header bg-danger text-white",
                   h5("Critical Alert", class = "mb-0")),
               div(class = "card-body",
                   p("Multiple contamination sources exceed WHO, CDC, and Codex safety standards by 10-6000x normal levels."),
                   p(strong("Immediate intervention required."))
               )
             )
      ),
      column(3,
             div(
               class = "card border-warning",
               div(class = "card-header bg-warning text-white",
                   h5("Key Standards", class = "mb-0")),
               div(class = "card-body",
                   tags$ul(
                     tags$li("WHO Drinking Water Guidelines"),
                     tags$li("Codex Alimentarius Food Standards"),
                     tags$li("CDC Lead Reference Values")
                   )
               )
             )
      ),
      column(3,
             div(
               class = "card border-info",
               div(class = "card-header bg-info text-white",
                   h5("Sample Types", class = "mb-0")),
               div(class = "card-body",
                   tags$ul(
                     tags$li("Water & Sediment"),
                     tags$li("Soil & Vegetation"),
                     tags$li("Fish & Aquatic Life"),
                     tags$li("Human & Animal Blood")
                   )
               )
             )
      ),
      column(3,
             div(
               class = "card border-success",
               div(class = "card-header bg-success text-white",
                   h5("Data Source", class = "mb-0")),
               div(class = "card-body",
                   p("Fundación Instituto de Tecnología de Alimentos (I.T.A.), 2006"),
                   p(em("Prefectura del Departamento de Chuquisaca"))
               )
             )
      )
    )
  ),
  
  # Tab 2: Water Analysis
  nav_panel(
    title = "Water Quality",
    icon = icon("tint"),
    
    fluidRow(
      column(12,
             h2("Water Quality Analysis"),
             p("Analysis of lead and mercury contamination in water sources compared to WHO drinking water guidelines.")
      )
    ),
    
    fluidRow(
      column(6,
             div(
               class = "card",
               div(class = "card-header",
                   h4("Lead in Water Sources")),
               div(class = "card-body",
                   withSpinner(plotlyOutput("water_lead_plot", height = "500px"))
               )
             )
      ),
      column(6,
             div(
               class = "card",
               div(class = "card-header",
                   h4("Mercury in Water Sources")),
               div(class = "card-body",
                   withSpinner(plotlyOutput("water_mercury_plot", height = "500px"))
               )
             )
      )
    ),
    
    fluidRow(
      column(12,
             div(
               class = "card mt-3",
               div(class = "card-header",
                   h4("Water Quality Data Table")),
               div(class = "card-body",
                   DT::dataTableOutput("water_table")
               )
             )
      )
    )
  ),
  
  # Tab 3: Soil & Sediment
  nav_panel(
    title = "Soil & Sediment",
    icon = icon("mountain"),
    
    fluidRow(
      column(12,
             h2("Soil and Sediment Analysis"),
             p("Lead contamination levels in soil and sediment samples across sampling locations.")
      )
    ),
    
    fluidRow(
      column(6,
             div(
               class = "card",
               div(class = "card-header",
                   h4("Lead in Soil")),
               div(class = "card-body",
                   withSpinner(plotlyOutput("soil_lead_plot", height = "500px"))
               )
             )
      ),
      column(6,
             div(
               class = "card",
               div(class = "card-header",
                   h4("Lead in Sediment")),
               div(class = "card-body",
                   withSpinner(plotlyOutput("sediment_lead_plot", height = "500px"))
               )
             )
      )
    )
  ),
  
  # Tab 4: Food Chain
  nav_panel(
    title = "Food Chain",
    icon = icon("leaf"),
    
    fluidRow(
      column(12,
             h2("Food Chain Contamination"),
             p("Lead contamination in agricultural crops and aquatic life compared to Codex Alimentarius food safety standards.")
      )
    ),
    
    fluidRow(
      column(6,
             div(
               class = "card",
               div(class = "card-header",
                   h4("Lead in Agricultural Crops")),
               div(class = "card-body",
                   withSpinner(plotlyOutput("veg_lead_plot", height = "500px"))
               )
             )
      ),
      column(6,
             div(
               class = "card",
               div(class = "card-header",
                   h4("Lead in Fish & Aquatic Life")),
               div(class = "card-body",
                   withSpinner(plotlyOutput("fish_lead_plot", height = "500px"))
               )
             )
      )
    )
  ),
  
  # Tab 5: Health Impact
  nav_panel(
    title = "Health Impact",
    icon = icon("heartbeat"),
    
    fluidRow(
      column(12,
             h2("Human and Animal Health Impact"),
             p("Blood lead levels in children and livestock compared to CDC and veterinary health standards.")
      )
    ),
    
    fluidRow(
      column(6,
             div(
               class = "card",
               div(class = "card-header",
                   h4("Lead in Children's Blood")),
               div(class = "card-body",
                   withSpinner(plotlyOutput("human_lead_plot", height = "500px"))
               )
             )
      ),
      column(6,
             div(
               class = "card",
               div(class = "card-header",
                   h4("Lead in Livestock Blood")),
               div(class = "card-body",
                   withSpinner(plotlyOutput("animal_lead_plot", height = "500px"))
               )
             )
      )
    )
  ),
  
  # Tab 6: Summary
  nav_panel(
    title = "Summary",
    icon = icon("clipboard-check"),
    
    fluidRow(
      column(12,
             h2("Summary and Conclusions"),
             
             div(
               class = "alert alert-danger",
               h4("🚨 Critical Contamination Areas"),
               tags$ul(
                 tags$li(strong("Water Sources:"), " Multiple locations exceed WHO lead standards by 10-80 times"),
                 tags$li(strong("Agricultural Crops:"), " Most crops show lead levels 10-100 times above Codex food safety limits"),
                 tags$li(strong("Fish and Aquatic Life:"), " Critical contamination in fish heads (>6000x safe levels)"),
                 tags$li(strong("Human Health:"), " Children in several communities exceed CDC reference values"),
                 tags$li(strong("Livestock:"), " All animal species show severe lead poisoning levels")
               )
             )
      )
    ),
    
    fluidRow(
      column(6,
             div(
               class = "card",
               div(class = "card-header bg-primary text-white",
                   h4("📊 Contamination Severity Rankings")),
               div(class = "card-body",
                   tags$ol(
                     tags$li(strong("Fish/Aquatic samples"), " - Most severely contaminated"),
                     tags$li(strong("Soil samples"), " - High contamination in multiple locations"),
                     tags$li(strong("Agricultural crops"), " - Widespread food safety concerns"),
                     tags$li(strong("Livestock blood"), " - Severe poisoning across all species"),
                     tags$li(strong("Children's blood"), " - Elevated levels in multiple communities"),
                     tags$li(strong("Water sources"), " - Several locations exceed safe drinking limits")
                   )
               )
             )
      ),
      column(6,
             div(
               class = "card",
               div(class = "card-header bg-success text-white",
                   h4("🔧 Immediate Actions Required")),
               div(class = "card-body",
                   tags$ol(
                     tags$li(strong("Immediate Actions:"), " Restrict consumption of locally grown crops and fish"),
                     tags$li(strong("Water Treatment:"), " Implement water purification systems for affected communities"),
                     tags$li(strong("Soil Remediation:"), " Begin soil treatment programs in highly contaminated areas"),
                     tags$li(strong("Health Monitoring:"), " Establish regular blood lead monitoring for children and pregnant women"),
                     tags$li(strong("Source Control:"), " Identify and eliminate lead contamination sources"),
                     tags$li(strong("Long-term Monitoring:"), " Implement continuous environmental monitoring program")
                   )
               )
             )
      )
    )
  )
)

# Define Server
server <- function(input, output, session) {
  
  # Create sample data (replace with your actual data loading)
  water_data <- reactive({
    # Replace this with: read_csv("path/to/ITA_water_2006.csv")
    tibble(
      Location = c("Tupiza", "Villazón", "Cotagaita", "Atocha", "Quiriza", "Tasna"),
      `Pb (mg/l)` = c(0.15, 0.82, 0.45, 0.23, 0.67, 0.34),
      `Hg (mg/l)` = c(0.001, 0.003, 0.002, 0.001, 0.002, 0.001)
    )
  })
  
  soil_data <- reactive({
    # Replace this with: read_csv("path/to/ITA_soil_2006.csv")
    tibble(
      Location = c("Tupiza", "Villazón", "Cotagaita", "Atocha", "Quiriza", "Tasna"),
      `Pb (mg/kg)` = c(150, 890, 234, 567, 1200, 345)
    )
  })
  
  sediment_data <- reactive({
    # Replace this with: read_csv("path/to/ITA_sed_2006.csv")
    tibble(
      Location = c("Tupiza", "Villazón", "Cotagaita", "Atocha", "Quiriza", "Tasna"),
      `Pb (mg/kg)` = c(45, 67, 34, 89, 23, 56)
    )
  })
  
  veg_data <- reactive({
    # Replace this with: read_csv("path/to/ITA_veg_2006.csv")
    tibble(
      Crop = c("Potato", "Quinoa", "Barley", "Wheat", "Corn", "Beans"),
      `Pb (mg/kg)` = c(3.4, 8.9, 12.3, 6.7, 4.5, 9.1)
    )
  })
  
  fish_data <- reactive({
    # Replace this with: read_csv("path/to/ITA_fish_2006.csv")
    tibble(
      `Sample Type` = c("Fish Head", "Fish Body", "Small Fish", "Aquatic Plants"),
      `Pb (mg/kg)` = c(1890, 456, 234, 67)
    )
  })
  
  human_data <- reactive({
    # Replace this with: read_csv("path/to/ITA_human_2006.csv")
    tibble(
      Location = c("Tupiza", "Villazón", "Cotagaita", "Atocha", "Quiriza"),
      `Mean Pb [µg/dl] Children` = c(8.5, 12.3, 6.7, 9.8, 11.2)
    )
  })
  
  animal_data <- reactive({
    # Replace this with: read_csv("path/to/ITA_animal_2006.csv")
    tibble(
      Animal = c("Cattle", "Sheep", "Goats", "Llamas", "Pigs"),
      `Pb (mg/dL)` = c(12.5, 8.9, 15.3, 9.8, 11.2)
    )
  })
  
  # Water plots
  output$water_lead_plot <- renderPlotly({
    who_lead_limit <- 0.01
    
    p <- water_data() %>%
      mutate(
        exceeds_limit = `Pb (mg/l)` > who_lead_limit,
        risk_level = case_when(
          `Pb (mg/l)` <= who_lead_limit ~ "Safe",
          `Pb (mg/l)` <= who_lead_limit * 2 ~ "Moderate Risk",
          `Pb (mg/l)` <= who_lead_limit * 5 ~ "High Risk",
          TRUE ~ "Critical Risk"
        )
      ) %>%
      ggplot(aes(x = reorder(Location, `Pb (mg/l)`), y = `Pb (mg/l)`, fill = risk_level)) +
      geom_col(alpha = 0.8) +
      geom_hline(yintercept = who_lead_limit, color = "red", linetype = "dashed", linewidth = 1) +
      scale_fill_manual(values = c("Safe" = "#27ae60", "Moderate Risk" = "#f39c12", 
                                   "High Risk" = "#e67e22", "Critical Risk" = "#e74c3c")) +
      labs(title = "Lead Contamination in Water Sources",
           x = "Location", y = "Lead Concentration (mg/L)",
           fill = "Risk Level") +
      theme_minimal() +
      coord_flip()
    
    ggplotly(p, tooltip = c("x", "y", "fill"))
  })
  
  output$water_mercury_plot <- renderPlotly({
    who_mercury_limit <- 0.006
    
    p <- water_data() %>%
      mutate(
        exceeds_limit = `Hg (mg/l)` > who_mercury_limit,
        risk_level = ifelse(`Hg (mg/l)` <= who_mercury_limit, "Safe", "High Risk")
      ) %>%
      ggplot(aes(x = reorder(Location, `Hg (mg/l)`), y = `Hg (mg/l)`, fill = risk_level)) +
      geom_col(alpha = 0.8) +
      geom_hline(yintercept = who_mercury_limit, color = "red", linetype = "dashed", linewidth = 1) +
      scale_fill_manual(values = c("Safe" = "#27ae60", "High Risk" = "#e74c3c")) +
      labs(title = "Mercury Contamination in Water Sources",
           x = "Location", y = "Mercury Concentration (mg/L)",
           fill = "Risk Level") +
      theme_minimal() +
      coord_flip()
    
    ggplotly(p, tooltip = c("x", "y", "fill"))
  })
  
  # Soil plots
  output$soil_lead_plot <- renderPlotly({
    soil_lead_limit <- 70
    
    p <- soil_data() %>%
      mutate(
        exceeds_limit = `Pb (mg/kg)` > soil_lead_limit,
        risk_level = case_when(
          `Pb (mg/kg)` <= soil_lead_limit ~ "Safe",
          `Pb (mg/kg)` <= soil_lead_limit * 3 ~ "Moderate Risk",
          `Pb (mg/kg)` <= soil_lead_limit * 10 ~ "High Risk",
          TRUE ~ "Critical Risk"
        )
      ) %>%
      ggplot(aes(x = reorder(Location, `Pb (mg/kg)`), y = `Pb (mg/kg)`, fill = risk_level)) +
      geom_col(alpha = 0.8) +
      geom_hline(yintercept = soil_lead_limit, color = "red", linetype = "dashed", linewidth = 1) +
      scale_fill_manual(values = c("Safe" = "#27ae60", "Moderate Risk" = "#f39c12", 
                                   "High Risk" = "#e67e22", "Critical Risk" = "#e74c3c")) +
      labs(title = "Lead Contamination in Soil",
           x = "Location", y = "Lead Concentration (mg/kg)",
           fill = "Risk Level") +
      theme_minimal() +
      coord_flip()
    
    ggplotly(p, tooltip = c("x", "y", "fill"))
  })
  
  output$sediment_lead_plot <- renderPlotly({
    soil_lead_limit <- 70
    
    p <- sediment_data() %>%
      mutate(
        exceeds_limit = `Pb (mg/kg)` > soil_lead_limit,
        risk_level = case_when(
          `Pb (mg/kg)` <= soil_lead_limit ~ "Safe",
          `Pb (mg/kg)` <= soil_lead_limit * 1.5 ~ "Moderate Risk",
          TRUE ~ "High Risk"
        )
      ) %>%
      ggplot(aes(x = reorder(Location, `Pb (mg/kg)`), y = `Pb (mg/kg)`, fill = risk_level)) +
      geom_col(alpha = 0.8) +
      geom_hline(yintercept = soil_lead_limit, color = "red", linetype = "dashed", linewidth = 1) +
      scale_fill_manual(values = c("Safe" = "#27ae60", "Moderate Risk" = "#f39c12", 
                                   "High Risk" = "#e74c3c")) +
      labs(title = "Lead Contamination in Sediment",
           x = "Location", y = "Lead Concentration (mg/kg)",
           fill = "Risk Level") +
      theme_minimal() +
      coord_flip()
    
    ggplotly(p, tooltip = c("x", "y", "fill"))
  })
  
  # Food chain plots
  output$veg_lead_plot <- renderPlotly({
    codex_lead_limit <- 0.3
    
    p <- veg_data() %>%
      mutate(
        exceeds_limit = `Pb (mg/kg)` > codex_lead_limit,
        risk_level = case_when(
          `Pb (mg/kg)` <= codex_lead_limit ~ "Safe",
          `Pb (mg/kg)` <= codex_lead_limit * 3 ~ "Moderate Risk",
          `Pb (mg/kg)` <= codex_lead_limit * 10 ~ "High Risk",
          TRUE ~ "Critical Risk"
        )
      ) %>%
      ggplot(aes(x = reorder(Crop, `Pb (mg/kg)`), y = `Pb (mg/kg)`, fill = risk_level)) +
      geom_col(alpha = 0.8) +
      geom_hline(yintercept = codex_lead_limit, color = "red", linetype = "dashed", linewidth = 1) +
      scale_fill_manual(values = c("Safe" = "#27ae60", "Moderate Risk" = "#f39c12", 
                                   "High Risk" = "#e67e22", "Critical Risk" = "#e74c3c")) +
      labs(title = "Lead Contamination in Agricultural Crops",
           x = "Crop", y = "Lead Concentration (mg/kg)",
           fill = "Risk Level") +
      theme_minimal() +
      coord_flip()
    
    ggplotly(p, tooltip = c("x", "y", "fill"))
  })
  
  output$fish_lead_plot <- renderPlotly({
    codex_lead_limit <- 0.3
    
    p <- fish_data() %>%
      mutate(
        exceeds_limit = `Pb (mg/kg)` > codex_lead_limit,
        risk_level = case_when(
          `Pb (mg/kg)` <= codex_lead_limit ~ "Safe",
          `Pb (mg/kg)` <= codex_lead_limit * 10 ~ "High Risk",
          TRUE ~ "Critical Risk"
        )
      ) %>%
      ggplot(aes(x = reorder(`Sample Type`, `Pb (mg/kg)`), y = `Pb (mg/kg)`, fill = risk_level)) +
      geom_col(alpha = 0.8) +
      geom_hline(yintercept = codex_lead_limit, color = "red", linetype = "dashed", linewidth = 1) +
      scale_fill_manual(values = c("Safe" = "#27ae60", "High Risk" = "#e67e22", 
                                   "Critical Risk" = "#e74c3c")) +
      labs(title = "Lead Contamination in Fish & Aquatic Life",
           x = "Sample Type", y = "Lead Concentration (mg/kg)",
           fill = "Risk Level") +
      theme_minimal() +
      coord_flip()
    
    ggplotly(p, tooltip = c("x", "y", "fill"))
  })
  
  # Health impact plots
  output$human_lead_plot <- renderPlotly({
    cdc_lead_limit <- 5
    
    p <- human_data() %>%
      mutate(
        exceeds_limit = `Mean Pb [µg/dl] Children` > cdc_lead_limit,
        risk_level = case_when(
          `Mean Pb [µg/dl] Children` <= cdc_lead_limit ~ "Safe",
          `Mean Pb [µg/dl] Children` <= cdc_lead_limit * 2 ~ "Moderate Risk",
          `Mean Pb [µg/dl] Children` <= cdc_lead_limit * 3 ~ "High Risk",
          TRUE ~ "Critical Risk"
        )
      ) %>%
      ggplot(aes(x = reorder(Location, `Mean Pb [µg/dl] Children`), y = `Mean Pb [µg/dl] Children`, fill = risk_level)) +
      geom_col(alpha = 0.8) +
      geom_hline(yintercept = cdc_lead_limit, color = "red", linetype = "dashed", linewidth = 1) +
      scale_fill_manual(values = c("Safe" = "#27ae60", "Moderate Risk" = "#f39c12", 
                                   "High Risk" = "#e67e22", "Critical Risk" = "#e74c3c")) +
      labs(title = "Lead in Children's Blood",
           x = "Location", y = "Blood Lead Level (µg/dL)",
           fill = "Risk Level") +
      theme_minimal() +
      coord_flip()
    
    ggplotly(p, tooltip = c("x", "y", "fill"))
  })
  
  output$animal_lead_plot <- renderPlotly({
    vet_lead_limit <- 0.3
    
    p <- animal_data() %>%
      mutate(
        exceeds_limit = `Pb (mg/dL)` > vet_lead_limit,
        risk_level = case_when(
          `Pb (mg/dL)` <= vet_lead_limit ~ "Safe",
          `Pb (mg/dL)` <= vet_lead_limit * 5 ~ "Moderate Risk",
          `Pb (mg/dL)` <= vet_lead_limit * 20 ~ "High Risk",
          TRUE ~ "Critical Risk"
        )
      ) %>%
      ggplot(aes(x = reorder(Animal, `Pb (mg/dL)`), y = `Pb (mg/dL)`, fill = risk_level)) +
      geom_col(alpha = 0.8) +
      geom_hline(yintercept = vet_lead_limit, color = "red", linetype = "dashed", linewidth = 1) +
      scale_fill_manual(values = c("Safe" = "#27ae60", "Moderate Risk" = "#f39c12", 
                                   "High Risk" = "#e67e22", "Critical Risk" = "#e74c3c")) +
      labs(title = "Lead in Livestock Blood",
           x = "Animal Type", y = "Blood Lead Level (mg/dL)",
           fill = "Risk Level") +
      theme_minimal() +
      coord_flip()
    
    ggplotly(p, tooltip = c("x", "y", "fill"))
  })
  
  # Data table
  output$water_table <- DT::renderDataTable({
    water_data() %>%
      mutate(
        `WHO Lead Limit Exceeded` = ifelse(`Pb (mg/l)` > 0.01, "Yes", "No"),
        `WHO Mercury Limit Exceeded` = ifelse(`Hg (mg/l)` > 0.006, "Yes", "No")
      ) %>%
      DT::datatable(
        options = list(pageLength = 10, scrollX = TRUE),
        rownames = FALSE
      ) %>%
      DT::formatRound(columns = c("Pb (mg/l)", "Hg (mg/l)"), digits = 3)
  })
}

# Run the app
shinyApp(ui = ui, server = server)