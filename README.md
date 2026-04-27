# nixr-templates

Nix flake templates for reproducible R development environments. Pick a template, initialise it in your project directory, and get a fully pinned shell with the right packages — no manual installation required.

## Templates

| Template | Description |
|---|---|
| `r-minimal` | A bare-bones R environment. Good starting point for general R work. |
| `r-miaverse` | R environment with the [miaverse](https://microbiome.github.io/) ecosystem for microbiome data analysis. |

## Usage

### 1. Copy a template into your project

```bash
# Minimal R environment
nix flake init -t github:raivo-otus/nixr-templates#r-minimal

# Miaverse (microbiome analysis) environment
nix flake init -t github:raivo-otus/nixr-templates#r-miaverse
```

This copies the template files — including `generate_env.R` and `.envrc` — into your current directory.

### 2. Generate the Nix environment

Enter a temporary shell with R and `rix`, then run the generation script:

```bash
nix-shell -p R rPackages.rix --run "Rscript generate_env.R"
```

This produces the `default.nix` that defines your environment.

### 3. Build and activate with direnv

```bash
direnv allow
```

direnv picks up `.envrc`, builds the environment, and activates it automatically whenever you enter the directory.

## Prerequisites

- [Nix](https://nixos.org/download/)
- [direnv](https://direnv.net/) hooked into your shell
