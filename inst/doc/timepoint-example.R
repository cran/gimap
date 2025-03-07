## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----echo = FALSE, results = 'hide'-------------------------------------------
library(gimap)

## ----echo = FALSE, results = 'hide'-------------------------------------------
library(dplyr)

## ----eval = FALSE-------------------------------------------------------------
# example_data <- get_example_data("count")

## ----eval = FALSE-------------------------------------------------------------
# colnames(example_data)

## ----eval = FALSE-------------------------------------------------------------
# counts <- example_data %>%
#   select(c("Day00_RepA", "Day05_RepA", "Day22_RepA", "Day22_RepB", "Day22_RepC")) %>%
#   as.matrix()

## ----eval = FALSE-------------------------------------------------------------
# pg_ids <- example_data %>%
#   dplyr::select("id")

## ----eval = FALSE-------------------------------------------------------------
# sample_metadata <- data.frame(
#   col_names = c("Day00_RepA", "Day05_RepA", "Day22_RepA", "Day22_RepB", "Day22_RepC"),
#   day = as.numeric(c("0", "5", "22", "22", "22")),
#   rep = as.factor(c("RepA", "RepA", "RepA", "RepB", "RepC"))
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
# run_qc(gimap_dataset,
#        output_file = "example_qc_report.Rmd",
#        overwrite = TRUE,
#        plots_dir = "plots",
#        quiet = TRUE)

## ----eval = FALSE-------------------------------------------------------------
# gimap_dataset <- gimap_dataset %>%
#   gimap_filter()

## ----eval = FALSE-------------------------------------------------------------
# str(gimap_dataset$filtered_data)

## ----eval = FALSE-------------------------------------------------------------
# nrow(gimap_dataset$filtered_data$transformed_log2_cpm)

## ----eval = FALSE-------------------------------------------------------------
# gimap_dataset <- gimap_dataset %>%
#   gimap_annotate(cell_line = "HELA") %>%
#   gimap_normalize(
#     timepoints = "day"
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
# # "NDEL1_NDE1" is top result so let's plot that
# plot_targets_bar(gimap_dataset, target1 = "TIAL1", target2 = "TIA1",
#                  reps_to_drop = "Day05_RepA_early")

## ----eval = FALSE-------------------------------------------------------------
# sessionInfo()

