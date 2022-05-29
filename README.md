# Bragmore dotfiles
My personal config files for:

- Kitty terminal emulator
- Neovim
- Starship
- zsh (z shell)

Neovim comes with builtin core LSP support, diagnostics, autocompletion, gitsigns and more! Everything configured in lua. Colorscheme also matches terminal colorscheme with a small touch of background transparency.

![image](https://user-images.githubusercontent.com/17138968/170885838-d1c4bcbc-a045-49b2-bee3-cc89b82004cb.png)
![plugins](https://user-images.githubusercontent.com/17138968/170885415-835a91c3-de7a-4481-a26f-cb0d944023a9.png)

Neovim file structure:

![image](https://user-images.githubusercontent.com/17138968/170886032-9b888da1-4662-4a43-8bb7-2623762e98c4.png)


## Installing

You will need `git` and GNU `stow`

Clone into your `$HOME` directory or `~`

```bash
git clone https://github.com/bragmore/dotfiles.git ~
```

Run `stow` to symlink everything or just select what you want

```bash
stow */ # Everything (the '/' ignores the README)
```

```bash
stow zsh # Just my zsh config
```

If you want the same visuals for files and directories in your terminal - install exa:

https://the.exa.website/

### Arch
```bash 
yay -S exa
```
