# Bragmore dotfiles

![image](https://user-images.githubusercontent.com/17138968/169141556-1af97201-e4c2-4331-acac-b80a34184ead.png)

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
