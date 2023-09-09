-- Plugin management with Packer.nvim
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
    use 'dense-analysis/ale'
    use {'junegunn/fzf', run = function() vim.fn['fzf#install']() end}
    use 'dylanaraps/wal.vim'
    use 'sheerun/vim-polyglot'
    use 'folke/tokyonight.nvim'
    use 'rebelot/kanagawa.nvim'

    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    use 'neovim/nvim-lspconfig'

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
