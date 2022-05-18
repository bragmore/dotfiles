local present, cmp = pcall(require, "cmp")
if not present then
    return
end

local lsp_symbols = {
    Text = "   ",
    Method = "   ",
    Function = "   ",
    Constructor = "   ",
    Field = " ﴲ  ",
    Variable = "[] ",
    Class = "   ",
    Interface = " ﰮ  ",
    Module = "   ",
    Property = " 襁 ",
    Unit = "   ",
    Value = "   ",
    Enum = " 練 ",
    Keyword = "   ",
    Snippet = "   ",
    Color = "  ",
    File = "  ",
    Reference = "  ",
    Folder = "  ",
    EnumMember = "   ",
    Constant = " ﲀ ",
    Struct = " ﳤ ",
    Event = "  ",
    Operator = "  ",
    TypeParameter = "  ",
}

cmp.setup({
    confirmation = { default_behaviour = cmp.ConfirmBehavior.Replace },
    sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "nvim_lua" },
        { name = "buffer" },
        { name = "path" },
        { name = 'emoji' }
    },
    mapping = {
        ["<cr>"] = cmp.mapping.confirm(),
        ["<s-tab>"] = cmp.mapping.select_prev_item(),
        ["<tab>"] = cmp.mapping.select_next_item(),
    },
    formatting = {
        deprecated = false,
        format = function(entry, item)
            item.kind = lsp_symbols[item.kind]
            item.menu = ({
                buffer = "[Buffer]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[Nvim]",
                path = "[Path]",
                luasnip = "[Snippet]",
            })[entry.source.name]

            return item
        end,
    },
    snippet = {
        expand = function(args)
            local line_num, col = unpack(vim.api.nvim_win_get_cursor(0))
            local line_text = vim.api.nvim_buf_get_lines(0, line_num - 1, line_num, true)[1]
            local indent = string.match(line_text, "^%s*")
            local replace = vim.split(args.body, "\n", true)

            local surround = string.match(line_text, "%S.*") or ""
            replace[1] = surround:sub(0, col - 2) .. replace[1] .. surround:sub(col - 1)
            if indent ~= "" then
                for i, line in ipairs(replace) do
                    replace[i] = indent .. line
                end
            end

            vim.api.nvim_buf_set_lines(0, line_num - 1, line_num, true, replace)
        end,
    },
})
