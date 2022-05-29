# Bragmore dotfiles
My personal config files for:

- Kitty terminal emulator
- Neovim
- Starship
- zsh shell

Comes with builtin core LSP support, diagnostics, autocompletion, gitsigns and more!

![terminal](https://user-images.githubusercontent.com/17138968/170885412-1b9ca921-9234-4a9a-8423-00009f1be4b8.png)
![plugins](https://user-images.githubusercontent.com/17138968/170885415-835a91c3-de7a-4481-a26f-cb0d944023a9.png)

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
