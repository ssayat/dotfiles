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
    dotfiles = false,
  },
})

require('leap').add_default_mappings()

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
})
-- Attaches to every FileType mode
require 'colorizer'.setup()

-- Attach to certain Filetypes, add special configuration for `html`
-- Use `background` for everything else.
--require 'colorizer'.setup {
--  'css';
--  'javascript';
--  html = {
--    mode = 'foreground';
--  }
--}
--
---- Use the `default_options` as the second parameter, which uses
---- `foreground` for every mode. This is the inverse of the previous
---- setup configuration.
--require 'colorizer'.setup({
--  'css';
--  'javascript';
--  html = { mode = 'background' };
--}, { mode = 'foreground' })
--
---- Use the `default_options` as the second parameter, which uses
---- `foreground` for every mode. This is the inverse of the previous
---- setup configuration.
--require 'colorizer'.setup {
--  '*'; -- Highlight all files, but customize some others.
--  css = { rgb_fn = true; }; -- Enable parsing rgb(...) functions in css.
--  html = { names = false; } -- Disable parsing "names" like Blue or Gray
--}
--
---- Exclude some filetypes from highlighting by using `!`
--require 'colorizer'.setup {
--  '*'; -- Highlight all files, but customize some others.
--  '!vim'; -- Exclude vim from highlighting.
--  -- Exclusion Only makes sense if '*' is specified!
--}
