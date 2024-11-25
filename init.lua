vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)


-- General Settings
vim.opt.number = true
vim.opt.relativenumber = true

-- Key Mappings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Save with <leader>w
map('n', '<leader>w', ':w!<CR>', opts)

-- Window navigation
map('n', '<C-j>', '<C-W>j', {})
map('n', '<C-k>', '<C-W>k', {})
map('n', '<C-h>', '<C-W>h', {})
map('n', '<C-l>', '<C-W>l', {})

-- Toggle line numbers
map('n', '<F3>', ':if &number == 1 | set norelativenumber nonumber | else | set number relativenumber | endif<CR>', opts)

-- NERDTree mappings (assuming Nvim-Tree or equivalent is used)
map('n', '<leader>nn', ':NERDTreeToggle<CR>', opts)
map('n', '<leader>nb', ':NERDTreeFromBookmark ', {})
map('n', '<leader>nf', ':NERDTreeFind<CR>', opts)

-- Move lines up and down
map('n', '<A-Up>', ':m-2<CR>==', opts)
map('n', '<A-Down>', ':m+1<CR>==', opts)
map('v', '<A-Up>', ":m '<-2<CR>gv=gv", opts)
map('v', '<A-Down>', ":m '>+1<CR>gv=gv", opts)

-- Search mappings
map('n', '<C-space>', '?', {})

-- Clear search
map('n', '<leader><CR>', ':noh<CR>', opts)

-- Wrapping selection in pairs
map('v', '(', '<esc>`>a)<esc>`<i(<esc>', opts)
map('v', '[', '<esc>`>a]<esc>`<i[<esc>', opts)
map('v', '{', '<esc>`>a}<esc>`<i{<esc>', opts)
map('v', '"', '<esc>`>a"<esc>`<i"<esc>', opts)
map('v', "'", "<esc>`>a'<esc>`<i'<esc>", opts)
map('v', '`', '<esc>`>a`<esc>`<i`<esc>', opts)

-- Telescope-like functionality (adjust based on your plugin)
map('n', '<leader>f', ':Files<CR>', opts)  -- Requires a plugin like fzf.vim or Telescope
map('n', '<leader>b', ':Buffers<CR>', opts)

