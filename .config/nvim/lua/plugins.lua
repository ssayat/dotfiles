-- Plugin management with Packer.nvim
--lua require'colorizer'.setup()
require('packer').startup(function(use)
    use 'preservim/nerdtree'
    -- use 'sheerun/vim-polyglot'
    use 'prabirshrestha/vim-lsp'
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'ggandor/leap.nvim'
    use 'ryanoasis/vim-devicons'
    use 'jiangmiao/auto-pairs'
    use 'gabrielelana/vim-markdown'
    use 'tpope/vim-surround'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'cocopon/iceberg.vim'
    use 'NLKNguyen/papercolor-theme'
    --use 'dense-analysis/ale'
    use {'junegunn/fzf', run = function() vim.fn['fzf#install']() end}
    use 'dylanaraps/wal.vim'
    use 'sheerun/vim-polyglot'
    use 'folke/tokyonight.nvim'
    use 'rebelot/kanagawa.nvim'
    use { "catppuccin/nvim", as = "catppuccin" }

    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    use 'neovim/nvim-lspconfig'
    use 'christoomey/vim-tmux-navigator'
    use 'norcalli/nvim-colorizer.lua'
    use 'nvim-tree/nvim-tree.lua'
    -- nvim-cmp
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    -- For vsnip users.
    use 'hrsh7th/cmp-vsnip'

    -- These optional plugins should be loaded directly because of a bug in Packer lazy loading
    use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
    use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
    use 'romgrk/barbar.nvim'

    use {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
end)
--require'nvim-treesitter.configs'.setup {
--  highlight = {
--    enable = true,
--    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
--    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
--    -- Using this option may slow down your editor, and you may see some duplicate highlights.
--    -- Instead of true it can also be a list of languages
--    additional_vim_regex_highlighting = false,
--  },
--}

require('leap').add_default_mappings()
