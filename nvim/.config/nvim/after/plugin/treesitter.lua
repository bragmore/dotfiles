local treesitter_status_ok, treesitter = pcall(require, "nvim-treesitter")
if not treesitter_status_ok then
  return
end

local hlargs_status_ok, hlargs = pcall(require, "hlargs")
if not hlargs_status_ok then
  return
end

-- local scheme_colors = {
--  none = "NONE",
--     bg_dark = "#1f2335",
--     bg = "#24283b",
--     bg_highlight = "#292e42",
--     terminal_black = "#414868",
--     fg = "#c0caf5",
--     fg_dark = "#a9b1d6",
--     fg_gutter = "#3b4261",
--     dark3 = "#545c7e",
--     comment = "#565f89",
--     dark5 = "#737aa2",
--     blue0 = "#3d59a1",
--     blue = "#7aa2f7",
--     cyan = "#7dcfff",
--     blue1 = "#2ac3de",
--     blue2 = "#0db9d7",
--     blue5 = "#89ddff",
--     blue6 = "#B4F9F8",
--     blue7 = "#394b70",
--     magenta = "#bb9af7",
--     magenta2 = "#ff007c",
--     purple = "#9d7cd8",
--     orange = "#ff9e64",
--     yellow = "#e0af68",
--     green = "#9ece6a",
--     green1 = "#73daca",
--     green2 = "#41a6b5",
--     teal = "#1abc9c",
--     red = "#f7768e",
--     red1 = "#db4b4b",
-- }


local rainbow = {
    "#ff9e64",
    "#bb9af7",
    "#7aa2f7",
    "#f7768e",
    "#1abc9c",
    "#7dcfff",
    "#ff007c",

}

require('hlargs').setup()

require'nvim-treesitter.configs'.setup { -- A list of parser names, or "all"
ensure_installed = "all",

-- Install parsers synchronously (only applied to `ensure_installed`)
sync_install = false,

-- List of parsers to ignore installing (for "all")
ignore_install = { "" },

highlight = {
  -- `false` will disable the whole extension
  enable = true,

  -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
  -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
  -- the name of the parser)
  -- list of language that will be disabled
  disable = { "" },

  -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
  -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
  -- Using this option may slow down your editor, and you may see some duplicate highlights.
  -- Instead of true it can also be a list of languages
  additional_vim_regex_highlighting = false,
},
rainbow = {
  -- Setting colors
  colors = {
    rainbow, termcolors = rainbow
  },
  enable = true,
  -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
  extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
  max_file_lines = nil, -- Do not enable for files with more than n lines, int
}
-- indent = { enable = true, disable = { "python", "css" } },
}

for i, c in ipairs(rainbow) do -- p00f/rainbow#81
	vim.cmd(("hi rainbowcol%d guifg=%s"):format(i, c))
end
