local status_ok, tokyonight = pcall(require, "tokyonight")
if not status_ok then
	return
end

-- Example config in Lua
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = false
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.opt.background = "dark"

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
vim.g.tokyonight_transparent_sidebar = true

-- Load the colorscheme
vim.cmd([[colorscheme tokyonight]])

vim.cmd("hi! Cursor guifg=#1D3267")
vim.cmd("hi! link Normal NvimTreeNormal")
vim.opt.guicursor = "n-v-c:block-Cursor,i-ci-ve:ver25-Cursor,r-cr-o:hor25-Cursor"
