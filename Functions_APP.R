#FUNCTION FOR MODELLING----

MD_cdk_calc <- function(smiles_inp) {
  
  #Variable:
  #Data with the column SMILES
  
  sp <- get.smiles.parser()
  smiles <- smiles_inp
  mols <- parse.smiles(smiles)

  dc <- get.desc.categories()
  const <- get.desc.names(dc[3])
  topol <- get.desc.names(dc[4])
  elect <- get.desc.names(dc[5])
  geometrical <- get.desc.names(dc[6])
  dn <- c(const, topol, elect, geometrical)
  allDescs <- eval.desc(mols, dn)
  rm(dc,const,topol,elect,geometrical,dn)
  return(allDescs)
}

Descr_curation <- function(Descriptor_all, autoscaling = FALSE) {
  
  colnames(Descriptor_all) <- make.names(colnames(Descriptor_all), unique = TRUE)

  keep_const <- apply(
    Descriptor_all,
    2,
    function(x) length(unique(x[!is.na(x)])) > 1
  )
  
  descs <- Descriptor_all[, keep_const, drop = FALSE]
  

  keep_na <- !apply(descs, 2, function(x) any(is.na(x)))
  descs <- descs[, keep_na, drop = FALSE]

  nzv <- caret::nearZeroVar(descs)
  if (length(nzv) > 0) {
    descs <- descs[, -nzv, drop = FALSE]
  }
  
  cor_mat <- cor(descs)
  
  high_r2 <- which(cor_mat^2 > 0.95, arr.ind = TRUE)
  high_r2 <- high_r2[high_r2[, 1] > high_r2[, 2], , drop = FALSE]
  
  if (nrow(high_r2) > 0) {
    cols_to_remove <- unique(high_r2[, 1])
    descs <- descs[, -cols_to_remove, drop = FALSE]
  }
  if (autoscaling) {
    descs <- as.data.frame(
      scale(as.matrix(descs), center = TRUE, scale = TRUE)
    )
  }
  
  colnames(descs) <- make.names(colnames(descs), unique = TRUE)
  
  return(descs)
}

Predict_with_intervals <- function(bootstrap_ensemble, smiles_vec, recipe) {
  if (is.null(bootstrap_ensemble)) return(NULL)
  
  smiles_desc <- MD_cdk_calc(smiles_vec)
  var_name <- setdiff(bootstrap_ensemble$train_vars, "Experimental_value")
  
  smiles_desc <- smiles_desc %>%
    dplyr::select(any_of(var_name)) %>%
    mutate(across(everything(), ~ as.numeric(unlist(.x))))
  
  smiles_final_descr <- bake(recipe, new_data = smiles_desc)
  
  n_models <- bootstrap_ensemble$n_models
  preds <- matrix(NA_real_, nrow = nrow(smiles_final_descr), ncol = n_models)
  
  for (i in seq_len(n_models)) {
    tryCatch({
      preds[, i] <- predict(bootstrap_ensemble$models[[i]], new_data = smiles_final_descr)$.pred
    }, error = function(e) {})
  }
  
  preds <- preds[, colSums(is.na(preds)) == 0, drop = FALSE]
  pred_mean <- predict(bootstrap_ensemble$final_model, new_data = smiles_final_descr)$.pred
  
  tibble(
    smiles = smiles_vec,
    .pred = pred_mean,
    .pred_low = apply(preds, 1, quantile, 0.025),
    .pred_high = apply(preds, 1, quantile, 0.975),
    .pred_sd = apply(preds, 1, sd),
    .pred_width = .pred_high - .pred_low
  )
}

Predict_with_intervals_koc <- function(bootstrap_ensemble, smiles_vec, recipe, soil_feats) {
  if (is.null(bootstrap_ensemble)) return(NULL)
  
  smiles_desc <- MD_cdk_calc(smiles_vec)
  var_name <- setdiff(bootstrap_ensemble$train_vars, "Experimental_value")
  
  smiles_desc <- smiles_desc %>%
    dplyr::select(any_of(var_name)) %>%
    mutate(across(everything(), ~ as.numeric(unlist(.x))))
  
  smiles_desc <- bind_cols(smiles_desc, soil_feats)
  
  smiles_final_descr <- bake(recipe, new_data = smiles_desc)
  
  n_models <- bootstrap_ensemble$n_models
  preds <- matrix(NA_real_, nrow = nrow(smiles_final_descr), ncol = n_models)
  
  for (i in seq_len(n_models)) {
    tryCatch({
      preds[, i] <- predict(bootstrap_ensemble$models[[i]], new_data = smiles_final_descr)$.pred
    }, error = function(e) {})
  }
  
  preds     <- preds[, colSums(is.na(preds)) == 0, drop = FALSE]
  pred_mean <- predict(bootstrap_ensemble$final_model, new_data = smiles_final_descr)$.pred
  
  tibble(
    smiles      = smiles_vec,
    .pred       = pred_mean,
    .pred_low   = apply(preds, 1, quantile, 0.025),
    .pred_high  = apply(preds, 1, quantile, 0.975),
    .pred_sd    = apply(preds, 1, sd),
    .pred_width = .pred_high - .pred_low
  )
}

prepare_koc_soil_features <- function(ph, texture) {
  
  soil_type <- dplyr::case_when(
    ph >= 4.5 & ph <= 5.5 & texture == "clay"                     ~ "SOIL1",
    ph >= 7.5 & texture %in% c("clay", "clay loam")               ~ "SOIL2",
    ph >= 5.5 & ph <= 7.0 & texture %in% c("silt loam", "loam")  ~ "SOIL3",
    ph >= 4.0 & ph <= 5.5 & texture == "loam"                     ~ "SOIL4",
    ph <= 6.0 & texture %in% c("loamy sand", "sandy loam")        ~ "SOIL5",
    ph >= 7.0 & texture %in% c("clay", "clay loam")               ~ "SOIL6",
    ph <= 4.5 & texture %in% c("sand", "loamy sand")              ~ "SOIL7",
    TRUE                                                            ~ "unclassified"
  )
  
  soils_in_model <- c("SOIL2", "SOIL3", "SOIL4", "SOIL5", "SOIL6", "unclassified")
  
  dummy_row <- setNames(
    lapply(soils_in_model, function(s) as.numeric(soil_type == s)),
    paste0("OECD_Soil_", soils_in_model)
  )
  dummy_row$pH <- ph
  
  as.data.frame(dummy_row)
}

Predict_with_prob <- function(bootstrap_ensemble, smiles_vec, recipe) {
  if (is.null(bootstrap_ensemble)) return(NULL)
  
  smiles_desc <- MD_cdk_calc(smiles_vec)
  var_name    <- setdiff(bootstrap_ensemble$train_vars, "Experimental_value")
  
  smiles_desc <- smiles_desc %>%
    dplyr::select(any_of(var_name)) %>%
    mutate(across(everything(), ~ as.numeric(unlist(.x))))
  
  smiles_final_descr <- bake(recipe, new_data = smiles_desc)
  
  prob_final <- predict(
    bootstrap_ensemble$final_model,
    new_data = smiles_final_descr,
    type     = "prob"
  )
  
  prob_nP  <- as.numeric(prob_final[[".pred_1"]])
  prob_PvP <- as.numeric(prob_final[[".pred_2"]])
  
  pred_class <- if (prob_PvP >= 0.5) "P/vP" else "nP"
  
  tibble(
    smiles     = smiles_vec,
    pred_class = pred_class,
    prob_nP    = round(prob_nP  * 100, 1),
    prob_PvP   = round(prob_PvP * 100, 1)
  )
}

Predict_bcf <- function(modelParameters, smiles_input) {
  if (is.null(modelParameters)) return(NULL)
  
  smiles_df <- data.frame("SMILES" = smiles_input)
  
  prob_final<- bcfBayes(
    modelParameters=listOfParam, 
    dataOfBcf=smiles_df)
  
  prob_nB  <- as.numeric(1 - prob_final[["probOfActivity"]])
  prob_BvB <- as.numeric(prob_final[["probOfActivity"]])
  
  pred_class <- if (prob_BvB >= 0.5) "B/vB" else "nB"
  
  tibble(
    smiles     = smiles_input,
    pred_class = pred_class,
    prob_nB    = round(prob_nB  * 100, 1),
    prob_BvB   = round(prob_BvB * 100, 1)
  )
}



# FUNCTION for GUI----

render_t_plot <- function(data, title) {
  renderPlot({
    res <- data()
    req(res)
    df       <- res[[title]]$pred
    similars <- res[[title]]$similars
    req(df)
    make_pred_plot(
      df        = df,
      similars  = similars,
      lambda    = lambdas[[title]],
      mw        = res$mw,
      title_str = paste(title, "- Prediction & Similar Compounds"),
      unit_str  = "mg/L"
    )
  })
}

render_t_table <- function(data, title) {
  renderUI({
    res      <- data()[[title]]
    pred     <- res$pred
    similars <- res$similars
    mw       <- data()$mw
    req(pred)
    make_pred_table_html(pred, similars, lambdas[[title]], mw, "mg/L")
  })
}

backtransform_boxcox <- function(value, lambda) {
  if (lambda == 0) {
    return(exp(value))
  } else {
    return((1 + lambda * value)^(1 / lambda))
  }
}

lambdas <- list(
  Daphnia = 0.02020202,
  Algae   = 0.02020202,
  Fish    = 0.1010101
)

lambdas_M <- list(
  KOC = -0.01634714
)

### for similar substances - regression models ----
get_fp <- function(smiles) {
  tryCatch({
    mol <- rcdk::parse.smiles(smiles)[[1]]
    if (is.null(mol)) return(NULL)
    rcdk::get.fingerprint(mol, type = "circular", depth = 3)
  }, error = function(e) NULL)
}

get_top_similar <- function(query_smiles, reference_db, n_top = 3) {
  if (is.null(reference_db) || nrow(reference_db) == 0) return(NULL)
  query_fp <- get_fp(query_smiles)
  if (is.null(query_fp)) return(NULL)
  
  similarities <- sapply(seq_len(nrow(reference_db)), function(i) {
    tryCatch({
      ref_fp <- get_fp(reference_db$smiles[i])
      if (is.null(ref_fp)) return(NA)
      fingerprint::distance(query_fp, ref_fp, method = "tanimoto")
    }, error = function(e) NA)
  })
  
  reference_db %>%
    mutate(similarity = similarities) %>%
    filter(!is.na(similarity)) %>%
    arrange(desc(similarity)) %>%
    slice_head(n = n_top) %>%
    dplyr::select(smiles, name, value, similarity)
}

### for similar substances - classification models ----

get_top_similar_class <- function(query_smiles, reference_db, n_top = 3) {
  if (is.null(reference_db) || nrow(reference_db) == 0) return(NULL)
  query_fp <- get_fp(query_smiles)
  if (is.null(query_fp)) return(NULL)
  
  similarities <- sapply(seq_len(nrow(reference_db)), function(i) {
    tryCatch({
      ref_fp <- get_fp(reference_db$smiles[i])
      if (is.null(ref_fp)) return(NA)
      fingerprint::distance(query_fp, ref_fp, method = "tanimoto")
    }, error = function(e) NA)
  })
  
  reference_db %>%
    mutate(similarity = similarities) %>%
    filter(!is.na(similarity)) %>%
    arrange(desc(similarity)) %>%
    slice_head(n = n_top) %>%
    dplyr::select(smiles, name, value, similarity)
}

### MW calculation with rdkit----

get_mw <- function(smiles) {
  tryCatch({
    mol  <- rcdk::parse.smiles(smiles)[[1]]
    desc <- rcdk::eval.desc(mol, "org.openscience.cdk.qsar.descriptors.molecular.WeightDescriptor")
    as.numeric(desc$MW)
  }, error = function(e) { message("MW calculation failed"); NA })
}

#FUNCTIONS - RDKIT RENDERING----

render_mol_highlighted_single <- function(mol, highlight_atoms, Draw_local) {
  img <- Draw_local$MolToImage(
    mol,
    highlightAtoms = if (length(highlight_atoms) > 0) highlight_atoms else NULL,
    size = reticulate::tuple(as.integer(400), as.integer(400))
  )
  tmp <- tempfile(fileext = ".png")
  img$save(tmp)
  tmp
}

render_reaction_scheme <- function(rxn, mol, Draw_local) {
  products_all <- tryCatch(
    rxn$RunReactants(reticulate::tuple(mol)),
    error = function(e) list()
  )
  if (length(products_all) == 0) return(NULL)
  
  prods <- products_all[[1]]
  
  tmp_reag <- tempfile(fileext = ".png")
  tryCatch(
    Draw_local$MolToImage(mol, size = reticulate::tuple(as.integer(300), as.integer(300)))$save(tmp_reag),
    error = function(e) NULL
  )
  
  tmp_prods <- lapply(seq_along(prods), function(i) {
    tmp <- tempfile(fileext = ".png")
    tryCatch({
      Draw_local$MolToImage(prods[[i]],
        size = reticulate::tuple(as.integer(300), as.integer(300)))$save(tmp)
      tmp
    }, error = function(e) NULL)
  })
  tmp_prods <- Filter(Negate(is.null), tmp_prods)
  if (length(tmp_prods) == 0) return(NULL)
  
  list(reagent = tmp_reag, products = tmp_prods)
}

# Plot and Table results for regression models----


make_pred_plot <- function(df, similars, lambda, mw, title_str, unit_str) {
  
  if (is.na(mw)) {
    plot.new()
    text(0.5, 0.5, "MW calculation failed", cex = 1.5, col = "red")
    return()
  }
  
  pred_mgL     <- backtransform_boxcox(df$.pred,      lambda) * mw
  pred_low_mgL <- backtransform_boxcox(df$.pred_low,  lambda) * mw
  pred_hi_mgL  <- backtransform_boxcox(df$.pred_high, lambda) * mw
  
  plot_data <- data.frame(
    label      = "Target",
    y          = log10(pred_mgL),
    ymin       = log10(pred_low_mgL),
    ymax       = log10(pred_hi_mgL),
    is_pred    = TRUE,
    similarity = NA_real_,
    cas        = NA_character_,
    stringsAsFactors = FALSE
  )
  
  if (!is.null(similars) && nrow(similars) > 0) {
    sim_data <- data.frame(
      label      = "Target",
      y          = log10(similars$value),
      ymin       = log10(similars$value),
      ymax       = log10(similars$value),
      is_pred    = FALSE,
      similarity = similars$similarity,
      cas        = similars$name,
      stringsAsFactors = FALSE
    )
    plot_data <- bind_rows(plot_data, sim_data)
  }
  
  ggplot(plot_data, aes(x = label, y = y)) +
    
    geom_errorbar(
      data      = dplyr::filter(plot_data, is_pred),
      aes(ymin  = ymin, ymax = ymax),
      width     = 0.08,
      linewidth = 0.7,
      color     = "#993404"
    ) +
    
    geom_point(
      data  = dplyr::filter(plot_data, is_pred),
      color = "#a1d99b",
      size  = 5,
      shape = 16
    ) +
    
    geom_point(
      data   = dplyr::filter(plot_data, !is_pred),
      color  = "#525252",
      fill   = NA,
      size   = 4,
      shape  = 21,
      stroke = 1.2
    ) +
    
    ggrepel::geom_text_repel(
      data          = dplyr::filter(plot_data, !is_pred),
      aes(label     = paste0(cas, "\n(", round(similarity, 2), ")")),
      size          = 4,
      color         = "#525252",
      fontface      = "italic",
      direction     = "y",
      nudge_x       = 0.35,
      segment.size  = 0.3,
      segment.color = "#aaaaaa",
      box.padding   = 0.5,
      point.padding = 0.4,
      max.overlaps  = Inf
    ) +
    
    scale_y_continuous(
      expand = expansion(mult = c(0.2, 0.2)),
      breaks = function(x) pretty(x, n = 8)
    ) +
    
    coord_flip() +
    
    theme_minimal(base_size = 13) +
    theme(
      axis.line.x     = element_line(color = "black", linewidth = 0.5),
      axis.ticks.x    = element_line(color = "black"),
      axis.text.x     = element_text(size = 11),
      axis.text.y     = element_blank(),
      axis.ticks.y    = element_blank(),
      axis.title.y    = element_blank(),
      panel.grid      = element_blank(),
      panel.border    = element_blank(),
      plot.background = element_blank(),
      plot.margin     = ggplot2::margin(5, 15, 5, 5)
    ) +
    labs(
      title   = title_str,
      x       = NULL,
      y       = paste0("log10(", unit_str, ")"),
      caption = "circle = similar compounds (Tanimoto similarity)"
    )
}

make_pred_table_html <- function(pred, similars, lambda, mw, unit_str) {
  
  row_color <- function(value_mgL, is_target = FALSE) {
    alpha_t <- if (is_target) "0.35" else "0.20"
    alpha_w <- if (is_target) "0.45" else "0.25"
    alpha_r <- if (is_target) "0.30" else "0.15"
    if (is.na(value_mgL))  return("")
    if (value_mgL > 1)     return(paste0("background-color: rgba(161,217,155,",  alpha_t, ");"))
    if (value_mgL >= 0.01) return(paste0("background-color: rgba(255,237,160,",  alpha_w, ");"))
    return(paste0("background-color: rgba(239,59,44,", alpha_r, ");"))
  }
  
  pred_val <- backtransform_boxcox(pred$.pred,      lambda) * mw
  pred_low <- backtransform_boxcox(pred$.pred_low,  lambda) * mw
  pred_hi  <- backtransform_boxcox(pred$.pred_high, lambda) * mw
  
  target_range <- paste0(
    format(round(pred_val, 1), nsmall = 1),
    " (", format(round(pred_low, 1), nsmall = 1),
    " - ", format(round(pred_hi,  1), nsmall = 1), ")"
  )
  
  th_style <- paste(
    "padding: 6px 10px;",
    "border-bottom: 2px solid #dee2e6;",
    "font-size: 0.82em;",
    "color: #495057;",
    "text-align: right;",
    "white-space: nowrap;"
  )
  th_style_left <- paste(
    "padding: 6px 10px;",
    "border-bottom: 2px solid #dee2e6;",
    "font-size: 0.82em;",
    "color: #495057;",
    "text-align: left;"
  )
  td_style      <- "padding: 5px 10px; font-size: 0.88em; text-align: right;"
  td_style_left <- "padding: 5px 10px; font-size: 0.88em; text-align: left;"
  
  header <- tags$thead(
    tags$tr(
      style = "border-bottom: 2px solid #dee2e6;",
      tags$th(style = th_style_left, "Type"),
      tags$th(style = th_style_left, "CAS"),
      tags$th(style = th_style,      paste0("Value (min - max) (", unit_str, ")")),
      tags$th(style = th_style,      "Similarity")
    )
  )
  
  target_row <- tags$tr(
    style = paste0(row_color(pred_val, is_target = TRUE),
      "font-weight: 600; border-bottom: 1px solid #dee2e6;"),
    tags$td(style = td_style_left, "Target"),
    tags$td(style = td_style_left, "Target"),
    tags$td(style = td_style,      target_range),
    tags$td(style = td_style,      "-")
  )
  
  sim_rows <- tagList()
  if (!is.null(similars) && nrow(similars) > 0) {
    sim_rows <- tagList(lapply(seq_len(nrow(similars)), function(i) {
      tags$tr(
        style = paste0(row_color(similars$value[i], is_target = FALSE),
          "border-bottom: 1px solid #f0f0f0;"),
        tags$td(style = td_style_left, "Similar"),
        tags$td(style = td_style_left, similars$name[i]),
        tags$td(style = td_style,      format(round(similars$value[i], 1), nsmall = 1)),
        tags$td(style = td_style,      format(round(similars$similarity[i], 2), nsmall = 2))
      )
    }))
  }
  
  tags$table(
    style = paste(
      "width: 100%;",
      "border-collapse: collapse;",
      "font-family: 'Helvetica Neue', Arial, sans-serif;",
      "margin-top: 0.5em;"
    ),
    header,
    tags$tbody(target_row, sim_rows)
  )
}

# Plot and table results for classification models (persistence)----

make_class_card <- function(result, similars, n_models = NULL, endpoint) {
  
  if (is.null(result)) {
    return(tags$div(style = "padding:1em; color:red;", "Prediction failed."))
  }
  
  if (endpoint == "Persistence") {
    is_pos     <- result$pred_class == "P/vP"
    label_pos  <- "P/vP"
    label_neg  <- "nP"
    prob_pos   <- result$prob_PvP
    prob_neg   <- result$prob_nP
  } else if (endpoint == "Bioaccumulation") {
    is_pos     <- result$pred_class == "B/vB"
    label_pos  <- "B/vB"
    label_neg  <- "nB"
    prob_pos   <- result$prob_BvB
    prob_neg   <- result$prob_nB
  } else {
    return(tags$div(style = "padding:1em; color:orange;",
      paste0("Unknown endpoint: ", endpoint)))
  }
  
    badge_style <- if (is_pos) {
    "display:inline-flex; align-items:center; gap:6px; padding:5px 13px;
     border-radius:6px; font-size:14px; font-weight:500;
     background:#FCEBEB; color:#A32D2D;"
  } else {
    "display:inline-flex; align-items:center; gap:6px; padding:5px 13px;
     border-radius:6px; font-size:14px; font-weight:500;
     background:#EAF3DE; color:#3B6D11;"
  }
  dot_color <- if (is_pos) "#E24B4A" else "#639922"
  
  note_text <- if (!is.null(n_models)) {
    paste0("Bootstrap ensemble - ", n_models, " models")
  } else {
    "Bootstrap ensemble"
  }
  
  th_s  <- "padding:5px 8px; border-bottom:2px solid #dee2e6; font-size:0.80em; color:#495057; text-align:left; white-space:nowrap;"
  th_sr <- "padding:5px 8px; border-bottom:2px solid #dee2e6; font-size:0.80em; color:#495057; text-align:right; white-space:nowrap;"
  td_s  <- "padding:4px 8px; font-size:0.85em; text-align:left;"
  td_sr <- "padding:4px 8px; font-size:0.85em; text-align:right;"
  
  make_bar_row <- function(label, pct, bar_color) {
    tags$div(
      style = "display:flex; align-items:center; gap:8px; margin-bottom:7px;",
      tags$span(
        style = "font-size:12px; font-weight:500; width:44px; flex-shrink:0; color:#6c757d;",
        label
      ),
      tags$div(
        style = "flex:1; height:10px; background:#f0f0f0; border-radius:5px; overflow:hidden;",
        tags$div(style = paste0(
          "height:100%; border-radius:5px; background:", bar_color,
          "; width:", pct, "%;"
        ))
      ),
      tags$span(
        style = "font-size:12px; font-weight:500; width:34px; text-align:right;",
        paste0(pct, "%")
      )
    )
  }
  
  class_badge <- function(cls) {
    if (is.na(cls) || cls == "") return(tags$span("-"))
    if (cls == label_neg) {
      tags$span(
        style = "padding:2px 7px; border-radius:4px; font-size:0.80em; font-weight:600;
                 background:#EAF3DE; color:#3B6D11;",
        cls
      )
    } else {
      tags$span(
        style = "padding:2px 7px; border-radius:4px; font-size:0.80em; font-weight:600;
                 background:#FCEBEB; color:#A32D2D;",
        cls
      )
    }
  }
    target_badge <- if (is_pos) {
    tags$span(
      style = "padding:2px 7px; border-radius:4px; font-size:0.80em; font-weight:600;
               background:#FCEBEB; color:#A32D2D;",
      label_pos
    )
  } else {
    tags$span(
      style = "padding:2px 7px; border-radius:4px; font-size:0.80em; font-weight:600;
               background:#EAF3DE; color:#3B6D11;",
      label_neg
    )
  }
  
  target_row_bg <- if (is_pos) {
    "background-color:rgba(252,235,235,0.35); font-weight:600; border-bottom:1px solid #dee2e6;"
  } else {
    "background-color:rgba(234,243,222,0.35); font-weight:600; border-bottom:1px solid #dee2e6;"
  }
  
  target_table_row <- tags$tr(
    style = target_row_bg,
    tags$td(style = td_s,  "Target"),
    tags$td(style = td_s,  "Target"),
    tags$td(style = td_sr, target_badge),
    tags$td(style = td_sr, "-")
  )
  
  sim_table_rows <- tagList()
  if (!is.null(similars) && nrow(similars) > 0) {
    sim_table_rows <- tagList(lapply(seq_len(nrow(similars)), function(i) {
      sim_cls <- as.character(similars$value[i])
      row_bg  <- if (sim_cls == label_neg) {
        "background-color:rgba(234,243,222,0.20); border-bottom:1px solid #f0f0f0;"
      } else {
        "background-color:rgba(252,235,235,0.20); border-bottom:1px solid #f0f0f0;"
      }
      tags$tr(
        style = row_bg,
        tags$td(style = td_s,  "Similar"),
        tags$td(style = td_s,  similars$name[i]),
        tags$td(style = td_sr, class_badge(sim_cls)),
        tags$td(style = td_sr, format(round(similars$similarity[i], 2), nsmall = 2))
      )
    }))
  }
    return(tags$div(
    style = "padding: 14px 16px;",
    
    tags$div(
      style = "display:flex; align-items:center; gap:8px; margin-bottom:14px;",
      tags$span(
        style = badge_style,
        tags$span(style = paste0(
          "width:8px; height:8px; border-radius:50%; flex-shrink:0; background:",
          dot_color, ";"
        )),
        result$pred_class
      ),
      tags$span(style = "font-size:11px; color:#6c757d;", "predicted class")
    ),
    
    make_bar_row(label_neg, prob_neg, "#639922"),
    make_bar_row(label_pos, prob_pos, "#E24B4A"),
    
    tags$hr(style = "border:none; border-top:0.5px solid #dee2e6; margin:10px 0 8px;"),
    tags$span(style = "font-size:11px; color:#aaa;", note_text),
    
    tags$div(
      style = "margin-top: 12px;",
      tags$table(
        style = "width:100%; border-collapse:collapse;
                 font-family:'Helvetica Neue', Arial, sans-serif;",
        tags$thead(
          tags$tr(
            style = "border-bottom:2px solid #dee2e6;",
            tags$th(style = th_s,  "Type"),
            tags$th(style = th_s,  "CAS"),
            tags$th(style = th_sr, "Class"),
            tags$th(style = th_sr, "Similarity")
          )
        ),
        tags$tbody(target_table_row, sim_table_rows)
      )
    )
  ))
}