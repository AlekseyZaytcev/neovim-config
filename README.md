# neovim-config

## Instalation

Copy `nvim` folder to `~/.config/` and run neovim.

### Dependencies

- [NerdFont](https://www.nerdfonts.com/)
    I prefer [JetBrains Mono](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip).
    Just copy all `otf` fonts into `~/.local/share/fonts/otf/YourFontName/....` and run `fc-cache`.
    You can check if font installed via command `fc-list | grep -i yourfontname`

- Arch linux
```bash
sudo pacman -Syu gcc-libs tar curl git ripgrep fd unzip gzip luarocks
```
