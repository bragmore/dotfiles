local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)

  use { 'wbthomason/packer.nvim' } -- lua plugin manager
  use { 'folke/tokyonight.nvim' } -- colorscheme
  use { 'b3nj5m1n/kommentary' } -- commenting tool
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- better syntax highlighting
  use { 'norcalli/nvim-colorizer.lua' } -- hexcolor code preview
  use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' }, tag = 'nightly' } -- filetree
  use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' } -- buffer tabs
  use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/plenary.nvim' } } } -- fuzzy finder
  use { 'akinsho/toggleterm.nvim', tag = 'v1.*' } -- terminal toggler inside nvim
  use { "williamboman/nvim-lsp-installer", "neovim/nvim-lspconfig" } -- native LSP
  use { "hrsh7th/nvim-cmp" } -- cmp core engine
  use { "hrsh7th/cmp-buffer" } -- buffer completions
  use { "hrsh7th/cmp-path" } -- path completions
  use { "hrsh7th/cmp-cmdline" } -- cmdline completions
  use { "saadparwaiz1/cmp_luasnip" } -- snippet completions
  use { "hrsh7th/cmp-nvim-lsp" } -- lsp support
  use { "hrsh7th/cmp-emoji" } -- emojis
  use { "hrsh7th/cmp-nvim-lua" } -- lua completions
  use { "L3MON4D3/LuaSnip" } --snippet engine
  use { "rafamadriz/friendly-snippets" } -- a bunch of snippets to use
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
  use { 'RRethy/vim-illuminate' }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
