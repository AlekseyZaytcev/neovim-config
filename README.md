# neovim-config

## Instalation

Copy `nvim` folder to `~/.config/` and start neovim.

### Dependencies

- [NerdFont](https://www.nerdfonts.com/)

    I prefer [JetBrains Mono](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/JetBrainsMono.zip).
    Just copy all `otf`(ttf goes under ttf folder) fonts into `~/.local/share/fonts/otf/YourFontName/....` and run `fc-cache`.
    You can check if the font is installed via command `fc-list | grep -i yourfontname`

- Install Golang, Rust

- Arch linux

    ```bash
    sudo pacman -Syu gcc-libs tar curl git ripgrep fd unzip gzip luarocks wl-clipboard # wl-clipboard for Wayland
    ```

### Tips

- If you use `vale` linter for markdown files, it fails with status code 2 without `.vale.ini` configuration file.
