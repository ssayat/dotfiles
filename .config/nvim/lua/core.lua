vim.cmd('set number')
vim.cmd('set relativenumber')
vim.cmd('set tabstop=4')
vim.cmd('set shiftwidth=4')
vim.cmd('set autoindent')
vim.cmd('set smartindent')
vim.cmd('set mousehide')
vim.cmd('set nowrap')
vim.cmd('set nocompatible')
vim.cmd('syntax on')
vim.cmd('set clipboard+=unnamedplus')

vim.cmd('set background=dark')
--vim.cmd('colorscheme PaperColor')
--vim.cmd('colorscheme iceberg')
vim.cmd('colorscheme tokyonight-night')
--vim.cmd('colorscheme kanagawa')
--vim.cmd('colorscheme catppuccin')
--colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
vim.cmd('set laststatus=2')
--opt.ignorecase = true
--opt.smartcase = true


vim.g.ale_sign_error = '!!'
vim.g.ale_sign_warning = '--'
vim.g.ale_linters = {python = {'flake8'}, cpp = {'clang'}}


require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
