# Dotfiles with chezmoi

My long-running dotfiles repository built with [dotbot](https://github.com/anishathalye/dotbot) was getting cluttered with configurations from abandoned experiments, and I wanted more control over what gets included and excluded on different machines. August 2023: gradually start rebuilding with [chezmoi](https://www.chezmoi.io/).

## Machine-specific data

[.chezmoi.yaml.tmpl](https://www.chezmoi.io/reference/special-files-and-directories/chezmoi-format-tmpl/) is a chezmoi template to set consistent variables for all machines.

[.chezmoidata.yaml](https://www.chezmoi.io/reference/special-files-and-directories/chezmoidata-format/) sets variables for each machine and is ignored by git.
