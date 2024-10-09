# Nvim Konfiguration

Diese Nvim Konfiguration ist für Prosatext gedacht. Da sich der Workflow zwischen schreiben und programmieren stark unterscheidet,
habe ich die Konfiguration von meiner "Nvim-IDE" getrennt. Mit einem Alias kann ich "Text-Projekte" mit dieser Konfiguration öffnen,
ohne meine IDE Konfiguration zu überscheiben.

Ich denke eine klare Trennung ist besser geeignet aber vielleicht führe ich beide Konfigurationen in Zukunft zusammen.

## LaTeX
Die LaTeX Einbindung ist nach diesem Tutorial inspiriert: https://ejmastnak.com/tutorials/vim-latex/intro/

## Alias
Angenommen meine neue Konfiguration ist in ~/.config/nvim-prose ausgecheckt:
```bash
alias prose='NVIM_APPNAME=nvim-prose nvim'
```

## Troubleshooting
Bei Fehlermeldungen bezüglich fehlnder .spl Dateien einfach nochmal den Editor starten. Neovim sollte dann fragen, ob die Dateien heruntergeladen werden sollen.

## Abhängigkeiten
Die Konfiguration basiert auf Pop!_OS und benötigt [`ripgrep`](https://github.com/BurntSushi/ripgrep) für ein (optionales) fuzzy search key binding:
```bash
sudo apt-get install ripgrep
```
