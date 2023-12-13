require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "cpp", "python", "rust", "java", "lua", "javascript", "typescript" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

require('leap').add_default_mappings()

require('nvim-autopairs').setup()

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
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

require ('colorizer').setup()
require('lualine').setup()

require("dapui").setup()
local dap = require('dap')
dap.adapters.java = function(callback)
  callback({
    type = 'server';
    host = '127.0.0.1';
    port = port;
  })
end

local highlight = {
  "Whitespace"
}
require("ibl").setup {
    indent = { highlight = highlight, char = "▏" },
    whitespace = {
        highlight = highlight,
        remove_blankline_trail = false,
    },
    scope = { enabled = false },
}
