## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval = FALSE-------------------------------------------------------------
# library(gimap)
# library(dplyr)

## ----eval = FALSE-------------------------------------------------------------
# example_data <- get_example_data("count_treatment")

## ----eval = FALSE-------------------------------------------------------------
# colnames(example_data)

## ----eval = FALSE-------------------------------------------------------------
# counts <- example_data %>%
#   select(c("pretreatment", "dmsoA", "dmsoB", "drug1A", "drug1B")) %>%
#   as.matrix()

## ----eval = FALSE-------------------------------------------------------------
# pg_ids <- example_data %>%
#   dplyr::select("id")

## ----eval = FALSE-------------------------------------------------------------
# sample_metadata <- data.frame(
#   col_names = c("pretreatment", "dmsoA", "dmsoB", "drug1A", "drug1B"),
#   drug_treatment = as.factor(c("pretreatment", "dmso", "dmso", "drug", "drug"))
# )

## ----eval = FALSE-------------------------------------------------------------
# gimap_dataset <- setup_data(
#   counts = counts,
#   pg_ids = pg_ids,
#   sample_metadata = sample_metadata
# )

## ----eval = FALSE-------------------------------------------------------------
# str(gimap_dataset)

## ----eval = FALSE-------------------------------------------------------------
# nrow(gimap_dataset$transformed_data$log2_cpm)

## ----eval = FALSE-------------------------------------------------------------
# gimap_filtered <- gimap_dataset %>%
#   gimap_filter()

## ----eval = FALSE-------------------------------------------------------------
# nrow(gimap_filtered$filtered_data$transformed_log2_cpm)

## ----eval = FALSE-------------------------------------------------------------
# str(gimap_filtered$filtered_data)

## ----eval = FALSE-------------------------------------------------------------
# nrow(gimap_filtered$filtered_data$transformed_log2_cpm)

## ----eval = FALSE-------------------------------------------------------------
# gimap_dataset <- gimap_filtered %>%
#   gimap_annotate(cell_line = "PC9") %>%
#   # Whatever is specified for "control_name" is what will be used to normalize other data points
#   gimap_normalize(
#     treatments = "drug_treatment",
#     control_name = "pretreatment"
#   ) %>%
#   calc_gi()

## ----eval = FALSE-------------------------------------------------------------
# head(gimap_dataset$gi_scores)

## ----eval = FALSE-------------------------------------------------------------
# head(dplyr::arrange(gimap_dataset$gi_score, fdr))

## ----eval = FALSE-------------------------------------------------------------
# plot_exp_v_obs_scatter(gimap_dataset)

## ----eval = FALSE-------------------------------------------------------------
# plot_rank_scatter(gimap_dataset)

## ----eval = FALSE-------------------------------------------------------------
# plot_volcano(gimap_dataset)

## ----eval = FALSE-------------------------------------------------------------
# # "MED12L_MED12" is top result so let's plot that
# plot_targets_bar(gimap_dataset, target1 = "AP2A1", target2 = "AP2A2")

## ----eval = FALSE-------------------------------------------------------------
# # To plot results, pick out two targets from the gi_score table
# head(dplyr::arrange(gimap_dataset$gi_score, fdr))
# 
# # "NDEL1_NDE1" is top result so let's plot that
# plot_targets_bar(gimap_dataset, target1 = "NDEL1", target2 = "NDE1")

## ----eval = FALSE-------------------------------------------------------------
# sessionInfo()

