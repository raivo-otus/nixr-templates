library(rix)

rix(
  r_ver = "latest-upstream",
  r_pkgs = c(
    "complexHeatmap",
    "devtools",
    "dplyr",
    "ggExtra",
    "ggplot2",
    "mia",
    "miaSim",
    "miaViz",
    "patchwork",
    "quarto",
    "rix",
    "scater",
    "stringr",
    "tidyr",
    "usethis"
  ),
  system_pkgs = c(
    "quarto"
  ),
  git_pkgs = NULL,
  ide = "code",
  project_path = ".",
  overwrite = TRUE
)
