-- local status_ok, lspconfig = pcall(require, "lspconfig")
-- if not status_ok then
--   return
-- end

-- local runtime_path = vim.split(package.path, ';')
-- table.insert(runtime_path, "lua/?.lua")
-- table.insert(runtime_path, "lua/?/init.lua")
-- local lspconfig = require("lspconfig")
-- local capabilities = vim.lsp.protocol.make_client_capabilities()

-- lspconfig.sumneko_lua.setup {
--   settings = {
--     Lua = {
--       runtime = {
--         -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
--         version = 'LuaJIT',
--         -- Setup your lua path
--         path = runtime_path,
--       },
--       diagnostics = {
--         -- Get the language server to recognize the `vim` global
--         globals = {'vim'},
--       },
--       workspace = {
--         -- Make the server aware of Neovim runtime files
--         library = vim.api.nvim_get_runtime_file("", true),
--       },
--       -- Do not send telemetry data containing a randomized but unique identifier
--       telemetry = {
--         enable = false,
--       },
--     },
--   },
-- }

-- capabilities.textDocument.completion.completionItem.snippetSupport = true

-- -- emmet_ls setup
-- lspconfig.emmet_ls.setup({
--   -- on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' },
-- })

-- -- tsserver setup
-- lspconfig.tsserver.setup{}

-- -- jsonls setup
-- lspconfig.jsonls.setup {
--   capabilities = capabilities,
-- }

-- -- cssls setup
-- lspconfig.cssls.setup {
--   capabilities = capabilities,
-- }

-- -- html setup
-- lspconfig.html.setup {
--   capabilities = capabilities,
-- }

-- -- pyright setup
-- lspconfig.pyright.setup{}

-- -- rust analyzer setup
-- lspconfig.rust_analyzer.setup{}

