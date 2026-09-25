
# LIBRARIES----

packages <- c("shiny","tidyverse","bslib","rcdk","tidymodels",
  "dplyr", "fingerprint", "reticulate", "readxl", "ggrepel")

for (p in packages) {
  if (!require(p, character.only = TRUE)) {
    install.packages(p)
    library(p, character.only = TRUE)
  }
}

# PYTHON SETTING----

conda_path <- "C:/ProgramData/miniconda3/Scripts/conda.exe"
env_name   <- "rdkit_env"

use_condaenv(env_name, conda = conda_path, required = TRUE)

rdkit   <- reticulate::import("rdkit")
Chem    <- rdkit$Chem
Draw    <- rdkit$Chem$Draw
AllChem <- rdkit$Chem$AllChem


# SOURCE CUSTOM FUNCTIONS & EXTERNAL FILES----

#set as wd the folder in which is located the SESAPIapp.r

if (interactive() && requireNamespace("rstudioapi", quietly = TRUE)) {
  current_path <- dirname(rstudioapi::getActiveDocumentContext()$path)
  setwd(current_path)
  message(paste("--- Working Directory correctly set up:", getwd()))
} else {
  if (!requireNamespace("this.path", quietly = TRUE))
    install.packages("this.path")
  current_path <- dirname(this.path::this.path())
  setwd(current_path)
  message(paste("--- Working Directory correctly set up:", getwd()))
}

if (file.exists("Functions_APP.R")) {
  source("Functions_APP.R")
  message("--- Functions_APP.R successfully loaded.")
} else {
  stop("Error: 'Functions_APP.R' not found in: ", getwd())
}

if (file.exists("ReactionsSMIRKS.R")) {
  source("ReactionsSMIRKS.R")
  message("--- ReactionsSMIRKS.R successfully loaded.")
} else {
  stop("Error: 'ReactionsSMIRKS.R' not found in: ", getwd())
}

if (file.exists("StructuralAlerts.R")) {
  source("StructuralAlerts.R")
  message("--- StructuralAlerts.R successfully loaded.")
} else {
  stop("Error: 'StructuralAlerts.R' not found in: ", getwd())
}
# LOAD MODELS & RECIPES - TOXICITY (T)----

# toxicity models are now loaded on request and discarded after the prediction

# models_T <- list(
#   Daphnia = tryCatch(readRDS("models/T_Daphnia_BART_bootstrap_ensemble.rds"),
#     error = function(e) { message("Daphnia model missing"); NULL }),
#   Algae   = tryCatch(readRDS("models/T_Algae_RF_bootstrap_ensemble.rds"),
#     error = function(e) { message("Algae model missing"); NULL }),
#   Fish    = tryCatch(readRDS("models/T_Fish_BART_bootstrap_ensemble.rds"),
#     error = function(e) { message("Fish model missing"); NULL })
# )
# 
# recipe_prep_daphnia <- tryCatch(readRDS("models/T_Recipe_Daphnia.rds"),
#   error = function(e) { message("Daphnia recipe missing"); NULL })
# 
# recipe_prep_algae <- tryCatch(readRDS("models/T_Recipe_Algae.rds"),
#   error = function(e) { message("Algae recipe missing"); NULL })
# 
# recipe_prep_fish <- tryCatch(readRDS("models/T_Recipe_Fish.rds"),
#   error = function(e) { message("Fish recipe missing"); NULL })

# LOAD MODELS & RECIPES - MOBILITY (M)----

model_M_koc <- tryCatch(readRDS("models/M_koc_RF_bootstrap_ensemble.rds"),
  error = function(e) { message("KOC model missing"); NULL })

recipe_prep_koc <- tryCatch(readRDS("models/M_Recipe_koc.rds"),
  error = function(e) { message("KOC recipe missing"); NULL })

# LOAD MODELS Bioaccumulation (B) ----

tryCatch(source("BayesModels/functions/bcfFunSet.r"),
  error = function(e) { message("BCF functions missing: ", e); NULL })

# LOAD MODELS & RECIPES - PERSISTENCE (P)----

models_P <- list(
  Water    = tryCatch(readRDS("models/P_Water_ExT_bootstrap_ensemble.rds"),
    error = function(e) { message("P_Water model missing"); NULL }),
  Sediment = tryCatch(readRDS("models/P_Sed_ExT_bootstrap_ensemble.rds"),
    error = function(e) { message("P_Sediment model missing"); NULL }),
  Soil     = tryCatch(readRDS("models/P_Soil_RF_bootstrap_ensemble.rds"),
    error = function(e) { message("P_Soil model missing"); NULL })
)

recipe_prep_p_water    <- tryCatch(readRDS("models/P_recipe_water.rds"),
  error = function(e) { message("P_Water recipe missing"); NULL })
recipe_prep_p_sediment <- tryCatch(readRDS("models/P_recipe_sed.rds"),
  error = function(e) { message("P_Sediment recipe missing"); NULL })
recipe_prep_p_soil     <- tryCatch(readRDS("models/P_recipe_soil.rds"),
  error = function(e) { message("P_Soil recipe missing"); NULL })

# LOAD DATASETS
#to search for similar substances

reference_db_daphnia <- tryCatch(read_excel("datasets/reference_db_daphnia.xlsx"),
  error = function(e) { message("reference_db_daphnia missing"); NULL })

reference_db_algae <- tryCatch(read_excel("datasets/reference_db_algae.xlsx"),
  error = function(e) { message("reference_db_algae missing"); NULL })

reference_db_fish <- tryCatch(read_excel("datasets/reference_db_fish.xlsx"),
  error = function(e) { message("reference_db_fish missing"); NULL })

reference_db_koc <- tryCatch(read_excel("datasets/reference_db_koc.xlsx"),
  error = function(e) { message("reference_db_koc missing"); NULL })

reference_db_p_water <- tryCatch(read_excel("datasets/reference_db_P_water.xlsx"),
  error = function(e) { message("reference_db_P_water missing"); NULL })

reference_db_p_sed <- tryCatch(read_excel("datasets/reference_db_P_sed.xlsx"),
  error = function(e) { message("reference_db_P_sed missing"); NULL })

reference_db_p_soil <- tryCatch(read_excel("datasets/reference_db_P_soil.xlsx"),
  error = function(e) { message("reference_db_P_soil missing"); NULL })

reference_db_bcf <- tryCatch(read_excel("datasets/reference_db_bcf.xlsx"),
  error = function(e) { message("reference_db_bfc missing"); NULL })


# USER INTERFACE----

ui <- page_navbar(
  title = "SESAPI",
  theme = bs_theme(version = 5, bootswatch = "flatly"),
  tags$head(
    tags$style(HTML("
      #run_t { background-color: #c6dbef; border-color: #c6dbef; color: #000; font-weight: 500; }
      #run_t:hover { background-color: #9ecae1; border-color: #9ecae1; color: #000; }

      #run_m { background-color: #fee391; border-color: #fee391; color: #000; font-weight: 500; }
      #run_m:hover { background-color: #fec44f; border-color: #fec44f; color: #000; }

      #run_p { background-color: #c7e9c0; border-color: #c7e9c0; color: #000; font-weight: 500; }
      #run_p:hover { background-color: #a1d99b; border-color: #a1d99b; color: #000; }
      
      #run_b { background-color: #e3bac0; border-color: #e3bac0; color: #000; font-weight: 500; }
      #run_b:hover { background-color: #f0a3ae; border-color: #f0a3ae; color: #000; }

      .alerts-grid { column-count: 3; column-gap: 1em; }
      @media (max-width: 900px) { .alerts-grid { column-count: 2 !important; } }
      @media (max-width: 600px) { .alerts-grid { column-count: 1 !important; } }
    "))
  ),
  
  # TAB 1: TOXICITY + MOBILITY + PERSISTENCE + BIOACCUMULATON----

  nav_panel(
    "PMT/PBT Analysis",
    layout_sidebar(
      sidebar = sidebar(
        title = "SMILES Input",
        
        textInput("smiles_input", "Enter SMILES:",
          value = "O=C1CN1CC(=O)C=Cc1ccccc1N"),
        
        hr(),
        
        actionButton("run_t", "Predict Toxicity (T)", class = "w-100"),
        
        hr(),
        
        h6("Mobility (M) inputs",
          style = "color: #198754; font-weight: bold; margin-bottom: 0.5em;"),
        
        bslib::tooltip(
          tags$span(
            style = paste(
              "display: inline-flex; align-items: center; justify-content: center;",
              "width: 18px; height: 18px; border-radius: 50%;",
              "background-color: #0d6efd; color: white;",
              "font-size: 11px; font-weight: bold; cursor: help;"
            ),
            "i"
          ),
          placement = "right",
          tags$strong("OECD 106 Soil Classification"),
          tags$br(),
          "SOIL1: pH 4.5-5.5 | clay",
          tags$br(),
          "SOIL2: pH >= 7.5 | clay, clay loam",
          tags$br(),
          "SOIL3: pH 5.5-7.0 | silt loam, loam",
          tags$br(),
          "SOIL4: pH 4.0-5.5 | loam",
          tags$br(),
          "SOIL5: pH <= 6.0 | loamy sand, sandy loam",
          tags$br(),
          "SOIL6: pH >= 7.0 | clay, clay loam",
          tags$br(),
          "SOIL7: pH <= 4.5 | sand, loamy sand",
          tags$br(),
          tags$em("Other combinations -> unclassified")
        ),
        
        numericInput("ph_input", "pH:",
          value = 4.5, min = 0, max = 14, step = 0.1),
        
        selectInput("texture_input", "Soil Texture:",
          choices = c("clay", "clay loam", "silt loam", "loam",
            "sandy loam", "loamy sand", "sand")),
        
        actionButton("run_m", "Predict Mobility (M)", class = "w-100"),
        
        hr(),
        
        actionButton("run_p", "Predict Persistence (P)", class = "w-100"),
        
        hr(),
        
        actionButton("run_b", "Bioaccumulation (B)", class = "w-100")
        
      ),
      
      uiOutput("toxicity_panel"),
      uiOutput("koc_panel"),
      uiOutput("persistence_panel"),
      uiOutput("bioaccumulation_panel")
      
    )
  ),
  
  # TAB 2: STRUCTURAL ANALYSIS----
  
  nav_panel(
    "Structural Analysis",
    layout_sidebar(
      sidebar = sidebar(
        title = "SMILES Input",
        textInput("smiles_sa", "Enter SMILES:",
          value = "O=C1CN1CC(=O)C=Cc1ccccc1N"),
        hr(),
        actionButton("run_sa", "Analyse Structure", class = "btn-warning w-100")
      ),
      fillable = FALSE,
      
      card(
        full_screen = TRUE,
        card_header("Structural Alerts"),
        uiOutput("alerts_ui")
      ),
      
      card(
        full_screen = TRUE,
        card_header("Degradation pathways (enviPath)"),
        uiOutput("reactions_ui")
      )
    )
  )
)

# SERVER----

server <- function(input, output, session) {
  
  # TAB 1 - TOXICITY (T)----
  
  results_t <- eventReactive(input$run_t, {
    req(input$smiles_input)
    
    id <- showNotification(
      tags$span(style = "font-weight: bold;", "Toxicity Prediction Ongoing..."),
      duration = NULL, closeButton = FALSE, type = "message"
    )
    on.exit(removeNotification(id))
    
    mw <- get_mw(input$smiles_input)


    models <- tryCatch(readRDS("models/T_Daphnia_BART_bootstrap_ensemble.rds"),
                       error = function(e) { message("Daphnia model missing"); NULL })
    recipe <- tryCatch(readRDS("models/T_Recipe_Daphnia.rds"),
                       error = function(e) { message("Daphnia recipe missing"); NULL })
    Daphnia <- list(
      pred     = Predict_with_intervals(models, input$smiles_input, recipe),
      similars = get_top_similar(input$smiles_input, reference_db_daphnia, n_top = 3)
    )
    rm(models)
    rm(recipe)
    gc(verbose = TRUE, reset = TRUE, full = TRUE)


    models <- tryCatch(readRDS("models/T_Algae_RF_bootstrap_ensemble.rds"),
                       error = function(e) { message("Algae model missing"); NULL })
    recipe <- tryCatch(readRDS("models/T_Recipe_Algae.rds"),
                       error = function(e) { message("Algae recipe missing"); NULL })
    Algae <- list(
      pred     = Predict_with_intervals(models, input$smiles_input, recipe),
      similars = get_top_similar(input$smiles_input, reference_db_algae, n_top = 3)
    )
    rm(models)
    rm(recipe)
    gc(verbose = TRUE, reset = TRUE, full = TRUE)


    models <- tryCatch(readRDS("models/T_Fish_BART_bootstrap_ensemble.rds"),
                       error = function(e) { message("Fish model missing"); NULL })
    recipe <- tryCatch(readRDS("models/T_Recipe_Fish.rds"),
                       error = function(e) { message("Fish recipe missing"); NULL })
    Fish <- list(
      pred     = Predict_with_intervals(models, input$smiles_input, recipe),
      similars = get_top_similar(input$smiles_input, reference_db_fish, n_top = 3)
    )
    rm(models)
    rm(recipe)
    gc(verbose = TRUE, reset = TRUE, full = TRUE)

    list(
      mw      = mw,
      Daphnia = Daphnia,
      Algae   = Algae,
      Fish    = Fish
    )
  })
  
  output$toxicity_panel <- renderUI({
    req(results_t())
    layout_column_wrap(
      width = 1/3,
      card(
        style = "border-color: #c6dbef;",
        card_header(style = "background-color: #c6dbef; border-bottom-color: #c6dbef;",
          "Daphnia Magna"),
        plotOutput("plot_daphnia", height = "220px"),
        div(style = "padding: 0 0.5em;", uiOutput("table_daphnia"))
      ),
      card(
        style = "border-color: #c6dbef;",
        card_header(style = "background-color: #c6dbef; border-bottom-color: #c6dbef;",
          "Algae"),
        plotOutput("plot_algae", height = "220px"),
        div(style = "padding: 0 0.5em;", uiOutput("table_algae"))
      ),
      card(
        style = "border-color: #c6dbef;",
        card_header(style = "background-color: #c6dbef; border-bottom-color: #c6dbef;",
          "Fish"),
        plotOutput("plot_fish", height = "220px"),
        div(style = "padding: 0 0.5em;", uiOutput("table_fish"))
      )
    )
  })
  
  output$plot_daphnia  <- render_t_plot(results_t, "Daphnia")
  output$table_daphnia <- render_t_table(results_t, "Daphnia")
  output$plot_algae    <- render_t_plot(results_t, "Algae")
  output$table_algae   <- render_t_table(results_t, "Algae")
  output$plot_fish     <- render_t_plot(results_t, "Fish")
  output$table_fish    <- render_t_table(results_t, "Fish")
  
  # TAB 1 - MOBILITY (M)----
  
  results_m <- eventReactive(input$run_m, {
    req(input$smiles_input, input$ph_input, input$texture_input)
    
    id <- showNotification(
      tags$span(style = "font-weight: bold;", "Mobility Prediction Ongoing..."),
      duration = NULL, closeButton = FALSE, type = "message"
    )
    on.exit(removeNotification(id))
    
    mw         <- get_mw(input$smiles_input)
    soil_feats <- prepare_koc_soil_features(input$ph_input, input$texture_input)
    
    list(
      mw  = mw,
      KOC = list(
        pred     = Predict_with_intervals_koc(
          model_M_koc, input$smiles_input, recipe_prep_koc, soil_feats
        ),
        similars = get_top_similar(input$smiles_input, reference_db_koc, n_top = 3)
      )
    )
  })
  
  output$koc_panel <- renderUI({
    req(results_m())
    layout_column_wrap(
      width = 1/3,
      card(
        style = "border-color: #fee391;",
        card_header(
          style = "background-color: #fee391; border-bottom-color: #fee391;",
          div(
            style = "display: flex; align-items: center; gap: 1em;",
            span("KOC - Mobility"),
            uiOutput("soil_type_badge")
          )
        ),
        plotOutput("plot_koc", height = "220px"),
        div(style = "padding: 0 0.5em;", uiOutput("table_koc"))
      )
    )
  })
  
  output$soil_type_badge <- renderUI({
    res <- results_m()
    req(res)
    soil_feats     <- prepare_koc_soil_features(input$ph_input, input$texture_input)
    soils_in_model <- c("SOIL2", "SOIL3", "SOIL4", "SOIL5", "SOIL6", "unclassified")
    detected <- soils_in_model[sapply(
      paste0("OECD_Soil_", soils_in_model),
      function(col) soil_feats[[col]] == 1
    )]
    soil_label  <- if (length(detected) == 0) "SOIL1" else detected
    badge_color <- if (soil_label == "unclassified") "bg-danger" else "bg-info"
    span(class = paste("badge", badge_color), soil_label)
  })
  
  output$plot_koc <- renderPlot({
    res <- results_m()
    req(res)
    df       <- res$KOC$pred
    similars <- res$KOC$similars
    req(df)
    make_pred_plot(
      df        = df,
      similars  = similars,
      lambda    = lambdas_M$KOC,
      mw        = res$mw,
      title_str = "KOC - Prediction & Similar Compounds",
      unit_str  = "mg/g"
    )
  })
  
  output$table_koc <- renderUI({
    res      <- results_m()
    req(res)
    pred     <- res$KOC$pred
    similars <- res$KOC$similars
    mw       <- res$mw
    req(pred)
    make_pred_table_html(pred, similars, lambdas_M$KOC, mw, "mg/g")
  })
  
  # TAB 1 - PERSISTENCE (P)----
  
  results_p <- eventReactive(input$run_p, {
    req(input$smiles_input)
    
    id <- showNotification(
      tags$span(style = "font-weight: bold;", "Persistence Prediction Ongoing..."),
      duration = NULL, closeButton = FALSE, type = "message"
    )
    on.exit(removeNotification(id))
    
    list(
      Water = list(
        pred     = Predict_with_prob(models_P$Water,    input$smiles_input, recipe_prep_p_water),
        similars = get_top_similar_class(input$smiles_input, reference_db_p_water, n_top = 3),
        n_models = models_P$Water$n_models
      ),
      Sediment = list(
        pred     = Predict_with_prob(models_P$Sediment, input$smiles_input, recipe_prep_p_sediment),
        similars = get_top_similar_class(input$smiles_input, reference_db_p_sed, n_top = 3),
        n_models = models_P$Sediment$n_models
      ),
      Soil = list(
        pred     = Predict_with_prob(models_P$Soil,     input$smiles_input, recipe_prep_p_soil),
        similars = get_top_similar_class(input$smiles_input, reference_db_p_soil, n_top = 3),
        n_models = models_P$Soil$n_models
      )
    )
  })
  
  output$persistence_panel <- renderUI({
    req(results_p())
    res <- results_p()
    
    layout_column_wrap(
      width = 1/3,
      card(
        style = "border-color: #c7e9c0;",
        card_header(
          style = "background-color: #c7e9c0; border-bottom-color: #c7e9c0;",
          "P_water"
        ),
        make_class_card(res$Water$pred, res$Water$similars, res$Water$n_models, "Persistence")
      ),
      card(
        style = "border-color: #c7e9c0;",
        card_header(
          style = "background-color: #c7e9c0; border-bottom-color: #c7e9c0;",
          "P_sediment"
        ),
        make_class_card(res$Sediment$pred, res$Sediment$similars, res$Sediment$n_models, "Persistence")
      ),
      card(
        style = "border-color: #c7e9c0;",
        card_header(
          style = "background-color: #c7e9c0; border-bottom-color: #c7e9c0;",
          "P_soil"
        ),
        make_class_card(res$Soil$pred, res$Soil$similars, res$Soil$n_models, "Persistence")
      )
    )
  })
  
  # TAB 1 - BIOACCUMULATION (B)----
  
  results_b <- eventReactive(input$run_b, {
    req(input$smiles_input)

    id <- showNotification(
      tags$span(style = "font-weight: bold;", "Bioaccumulation Prediction Ongoing..."),
      duration = NULL, closeButton = FALSE, type = "message"
    )
    on.exit(removeNotification(id))

    list(
      BCF = list(
        pred     = Predict_bcf(modelParameters = listOfParam, smiles_input = input$smiles_input),
        similars = get_top_similar_class(input$smiles_input, reference_db_bcf, n_top = 3)
      )
    )
  })
  
  output$bioaccumulation_panel <- renderUI({
    req(results_b())
    res <- results_b()
    
    layout_column_wrap(
      width = 1/3,
      card(
        style = "border-color: #e3bac0;",
        card_header(
          style = "background-color: #e3bac0; border-bottom-color: #e3bac0;",
          "Bioaccumulation"
        ),
        make_class_card(res$BCF$pred, res$BCF$similars, n_models = NULL, "Bioaccumulation")
      )
    )
  })
  
  # TAB 2 - STRUCTURAL ANALYSIS----
  
  analysis_results <- eventReactive(input$run_sa, {
    req(input$smiles_sa)
    
    id <- showNotification(
      tags$span(style = "font-weight: bold;", "Analysing structure..."),
      duration = NULL, closeButton = FALSE, type = "warning"
    )
    on.exit(removeNotification(id))
    
    smiles <- input$smiles_sa
    mol    <- Chem$MolFromSmiles(smiles)
    
    if (is.null(mol)) {
      showNotification("Invalid SMILES!", type = "error")
      return(NULL)
    }
    
    alerts_found <- list()
    
    for (alert in structural_alerts) {
      query <- tryCatch(Chem$MolFromSmarts(alert$smarts), error = function(e) NULL)
      if (is.null(query)) next
      match <- mol$GetSubstructMatch(query)
      if (length(match) > 0) {
        img_path <- render_mol_highlighted_single(mol, match, Draw)
        alerts_found <- append(alerts_found, list(
          c(alert, list(image = img_path))
        ))
      }
    }
    
    reactions_found <- list()
    
    for (rxn_data in reactions_smirks) {
      rxn <- tryCatch(
        AllChem$ReactionFromSmarts(rxn_data$smirks),
        error = function(e) NULL
      )
      if (is.null(rxn)) next
      
      products_test <- tryCatch(
        rxn$RunReactants(reticulate::tuple(mol)),
        error = function(e) list()
      )
      
      if (length(products_test) > 0) {
        scheme <- render_reaction_scheme(rxn, mol, Draw)
        if (!is.null(scheme)) {
          prod_smiles_list <- lapply(seq_along(products_test[[1]]), function(j) {
            tryCatch({
              prod_mol <- products_test[[1]][[j]]
              Chem$SanitizeMol(prod_mol)
              Chem$MolToSmiles(prod_mol)
            }, error = function(e) {
              message("SMILES prod ", j, ": ", conditionMessage(e))
              "N/A"
            })
          })
          reactions_found <- append(reactions_found, list(
            list(meta = rxn_data, 
              scheme = scheme,
              prod_smiles = prod_smiles_list)
          ))
        }
      }
    }
    
    list(alerts = alerts_found, reactions = reactions_found)
  })
  
  output$alerts_ui <- renderUI({
    res <- analysis_results()
    req(res)
    
    if (length(res$alerts) == 0) {
      return(div(style = "padding: 1em;",
        p("No structural alerts found for this molecule.")))
    }
    
    alert_cards <- lapply(seq_along(res$alerts), function(i) {
      alert <- res$alerts[[i]]
      
      category <- if (!is.null(alert$category)) alert$category else ""
      
      theme <- if (category == "Tox") {
        list(
          border  = "border-color: #c6dbef;",
          header  = "background-color: #c6dbef;",
          badge   = "background:#FCEBEB; color:#A32D2D;"
        )
      } else if (category %in% c("vP", "P/vP")) {
        list(
          border  = "border-color: #c7e9c0;",
          header  = "background-color: #c7e9c0;",
          badge   = "background:#FCEBEB; color:#A32D2D;"
        )
      } else if (category == "nP") {
        list(
          border  = "border-color: #c7e9c0;",
          header  = "background-color: #c7e9c0;",
          badge   = "background:#EAF3DE; color:#3B6D11;"
        )
      } else if (category %in% c("vB", "B/vB")) {
        list(
          border  = "border-color: #e3bac0;",
          header  = "background-color: #e3bac0;",
          badge   = "background:#FCEBEB; color:#A32D2D;"
        )
      } else if (category == "nB") {
        list(
          border  = "border-color: #e3bac0;",
          header  = "background-color: #e3bac0;",
          badge   = "background:#EAF3DE; color:#3B6D11;"
        )
      } else {
        list(
          border  = "border-color: #dee2e6;",
          header  = "background-color: #f8f9fa;",
          badge   = "background:#dee2e6; color:#333;"
        )
      }
      
      div(
        style = "break-inside: avoid; margin-bottom: 1em;",
        card(
          style = theme$border,
          card_header(
            style = theme$header,
            div(
              style = "display: flex; align-items: center; gap: 0.6em; flex-wrap: wrap;",
              strong(paste0("[", alert$id, "] ", alert$name)),
              span(
                style = paste0(
                  "padding: 2px 8px; border-radius: 4px; font-size: 0.8em; font-weight: 600;",
                  theme$badge
                ),
                category
              )
            )
          ),
          div(
            style = "display: flex; flex-direction: column; gap: 0.6em; padding: 0.75em;",
            div(
              style = "text-align: center;",
              imageOutput(paste0("alert_img_", i), width = "180px", height = "180px")
            ),
            tags$ul(
              style = "list-style: none; padding: 0; margin: 0; font-size: 0.82em; line-height: 1.9em;",
              tags$li(strong("SMARTS: "),   code(alert$smarts)),
              tags$li(strong("Endpoint: "), alert$Endpoint),
              tags$li(strong("Species: "),  alert$Species)
            )
          )
        )
      )
    })
    
    div(class = "alerts-grid", tagList(alert_cards))
  })
  
  output$reactions_ui <- renderUI({
    res <- analysis_results()
    req(res)
    
    if (length(res$reactions) == 0) {
      return(div(style = "padding: 1em;",
        p("No applicable reactions found for this molecule.")))
    }
    
    reaction_cards <- lapply(seq_along(res$reactions), function(i) {
      rxn     <- res$reactions[[i]]
      n_prods <- length(rxn$scheme$products)
      card(
        style = "margin-bottom: 1.5em; width: 100%; overflow: visible;",
        card_header(strong(paste0("[", rxn$meta$id, "] ", rxn$meta$name))),
        p(style = "padding: 0 1em;", em(rxn$meta$description)),
        div(
          style = "display: flex; flex-direction: row; align-items: center;
               gap: 2em; padding: 1.5em; flex-wrap: wrap; justify-content: center; width: 100%;",
          div(
            style = "text-align: center;",
            p(strong("Reagent")),
            imageOutput(paste0("reag_img_", i), width = "280px", height = "280px")
          ),
          div(style = "font-size: 2.5em; font-weight: bold; color: #555;", "->"),
          !!!lapply(seq_len(n_prods), function(j) {
            prod_smiles <- if (!is.null(rxn$prod_smiles[[j]])) rxn$prod_smiles[[j]] else "N/A"
            tagList(
              div(
                style = "text-align: center;",
                p(strong(paste0("Product ", j))),
                imageOutput(paste0("prod_img_", i, "_", j), width = "280px", height = "280px"),
                div(
                  style = "margin-top: 0.4em; font-size: 0.78em; color: #555;
                       word-break: break-all; max-width: 280px; margin-left: auto; margin-right: auto;",
                  strong("SMILES: "),
                  code(style = "font-size: 0.95em;", prod_smiles)
                )
              ),
              if (j < n_prods) {
                div(style = "font-size: 2em; font-weight: bold; color: #555;", "+")
              }
            )
          })
        )
      )
    })
    tagList(reaction_cards)
  })
  
  observeEvent(input$run_sa, {
    res <- analysis_results()
    req(res)
    for (i in seq_along(res$alerts)) {
      local({
        idx   <- i
        alert <- res$alerts[[idx]]
        output[[paste0("alert_img_", idx)]] <- renderImage({
          list(src = alert$image, contentType = "image/png",
            width = 250, height = 250)
        }, deleteFile = FALSE)
      })
    }
  })
  
  observeEvent(input$run_sa, {
    res <- analysis_results()
    req(res)
    for (i in seq_along(res$reactions)) {
      local({
        idx <- i
        rxn <- res$reactions[[idx]]
        output[[paste0("reag_img_", idx)]] <- renderImage({
          list(src = rxn$scheme$reagent, contentType = "image/png",
            width = 260, height = 260)
        }, deleteFile = FALSE)
        for (j in seq_along(rxn$scheme$products)) {
          local({
            jdx <- j
            output[[paste0("prod_img_", idx, "_", jdx)]] <- renderImage({
              list(src = rxn$scheme$products[[jdx]], contentType = "image/png",
                width = 260, height = 260)
            }, deleteFile = FALSE)
          })
        }
      })
    }
  })
}

# RUN APP----

shinyApp(ui, server)