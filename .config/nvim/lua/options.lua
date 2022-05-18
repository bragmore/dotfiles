-- set neovim config directory location
vim.g.config = "~/.config/nvim/"

-- enable terminal colors
vim.opt.termguicolors = true

-- don't exit terminal processes when toggling the term
vim.o.hidden = true
vim.opt.background = "dark"
vim.wo.t_Co = "256"

-- setting screen to 256 color support
vim.g["TERM"] = "screen-256color"

-- number stuff
vim.opt.nu = true
vim.opt.rnu = true
vim.opt.nuw = 1

-- tab stuff
vim.bo.tabstop = 2
vim.bo.expandtab = true
vim.bo.shiftwidth = 2

-- disable swap files
vim.opt.swapfile = false
vim.opt.clipboard = "unnamedplus"
