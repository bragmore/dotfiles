# Bragmore dotfiles
My personal config files for:

- Kitty terminal emulator
- Neovim
- Starship
- zsh (z shell)

Neovim comes with builtin core LSP support, diagnostics, autocompletion, gitsigns and more! Everything configured in lua. Colorscheme also matches terminal colorscheme with a small touch of background transparency.

![image](https://user-images.githubusercontent.com/17138968/170888308-6ec0e12b-8f5b-4abc-ae8a-48e4fab5ba1c.png)
![plugins](https://user-images.githubusercontent.com/17138968/170885415-835a91c3-de7a-4481-a26f-cb0d944023a9.png)

Neovim file structure:

![image](https://user-images.githubusercontent.com/17138968/170888361-c0f5a2e9-822c-462a-b1de-8917c6e3dda8.png)


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
