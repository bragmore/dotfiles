local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

require("bufferline").setup({
  options = {
    -- numbers = "ordinal",
    indicator_icon = "▎",
    modified_icon = "●",
    show_close_icon = false,
    show_buffer_close_icons = false,
    left_trunc_marker = "",
    right_trunc_marker = "",
    -- diagnostics source
    diagnostics = "nvim_lsp",
    -- split style："slant" | "thick" | "thin" | { "|", "|" }
    separator_style = "thin",
    filetype = "undotree",
    text = "Undo Explorer",
    highlight = "Directory",
    text_align = "center",
  },
  {
    filetype = "dbui",
    text = "Database Explorer",
    highlight = "Directory",
    text_align = "center",
  },
  {
    filetype = "spectre_panel",
    text = "Project Blurry Search",
    highlight = "Directory",
    text_align = "center",
  },
})
