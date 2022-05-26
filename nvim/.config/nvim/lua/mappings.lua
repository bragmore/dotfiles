-- options
local opts = { noremap = true, silent = true }
local opts2 = { silent = true }
-- keymap variable shortcut
local map = vim.api.nvim_set_keymap

-- leader
vim.g.mapleader = " "

-- escape
map("i", "jk", "<ESC>", opts)

-- split management
map("n", "<C-h>", "<C-w>h", opts) -- Goto left window
map("n", "<C-j>", "<C-w>j", opts) -- Goto down window
map("n", "<C-k>", "<C-w>k", opts) -- Goto upper window
map("n", "<C-l>", "<C-w>l", opts) -- Goto right window
map("n", "<leader>ws", "<C-W>s", opts) -- Split window below
map("n", "<leader>wv", "<C-W>v", opts) -- Split window right

-- highlight
map("n", "<C-s>", "<cmd>set hlsearch!<CR>", opts) -- toggle hl

-- buffers
map("n", "zz", "<cmd>bw<CR>", opts) -- close current buffer

-- nvimtree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", opts) -- toggle
-- telescope
map("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>", opts) -- find files
map("n", "<leader>ft", "<cmd>Telescope<CR> lsp", opts) -- lsp
map("n", "<leader>fs", "<cmd>Telescope file_browser<CR>", opts) -- file browser
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts) -- active buffers
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts) -- live grep
map("n", "<leader>fh", "<cmd>Telescope command_history<CR>", opts) -- command history
map("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", opts) -- old files

vim.keymap.set("n", "<leader>rc", function()
    require("telescope.builtin").find_files {
        prompt_title = "< vimrc >",
        cwd = "~/Documents/Code",
    }
end, {silent = true })

vim.keymap.set("n", "<leader>fa", function()
    require("telescope.builtin").find_files {
        prompt_title = "< vimrc >",
        cwd = "~/.config",
    }
end, {silent = true })

-- bufferline
map("n", "<C-o>", "<cmd>BufferLineCyclePrev<CR>", opts)
map("n", "<C-i>", "<cmd>BufferLineCycleNext<CR>", opts)

-- toggleterm
map("t", "<leader>tt", "<cmd>ToggleTerm<CR>", opts)
map("n", "<leader>tt", "<cmd>ToggleTerm<CR>", opts)

-- local bufmap = vim.api.nvim_buf_set_keymap

-- --- In lsp attach function
-- bufmap(0, "n", "gr", "<cmd>Lspsaga rename<cr>", {silent = true, noremap = true})
-- bufmap(0, "n", "gx", "<cmd>Lspsaga code_action<cr>", {silent = true, noremap = true})
-- bufmap(0, "x", "gx", ":<c-u>Lspsaga range_code_action<cr>", {silent = true, noremap = true})
-- bufmap(0, "n", "K",  "<cmd>Lspsaga hover_doc<cr>", {silent = true, noremap = true})
-- bufmap(0, "n", "gl", "<cmd>Lspsaga show_line_diagnostics<cr>", {silent = true, noremap = true})
-- bufmap(0, "n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", {silent = true, noremap = true})
-- bufmap(0, "n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", {silent = true, noremap = true})
-- bufmap(0, "n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", {})
-- bufmap(0, "n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", {})
