local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

-- sumneko_lua setup
lspconfig.sumneko_lua.setup{
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

-- emmet_ls setup
lspconfig.emmet_ls.setup({
  capabilities = capabilities,
  filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' },
})

-- tsserver setup
lspconfig.tsserver.setup{}

-- jsonls setup
lspconfig.jsonls.setup{}

-- cssls setup
lspconfig.cssls.setup{
  capabilities = capabilities,
  css = {
    validate = true
  },
  less = {
    validate = true
  },
  scss = {
    validate = true
  }
}

-- html setup
lspconfig.html.setup{}

-- pyright setup
lspconfig.pyright.setup{}

-- rust analyzer setup
lspconfig.rust_analyzer.setup{}
