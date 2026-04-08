library(rix)

rix(
  r_ver = "latest-upstream",
  r_pkgs = c(
    "devtools",
    "dplyr",
    "ggplot2",
    "quarto",
    "rix",
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
