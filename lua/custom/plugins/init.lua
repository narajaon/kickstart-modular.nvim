-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  -- [] bindings
  'tpope/vim-unimpaired',

  -- Prettier for autofix on save
  -- 'prettier/vim-prettier',

  {
    'NMAC427/guess-indent.nvim',
    config = function()
      require('guess-indent').setup {}
    end,
  },

  -- OneStatus
  'narajaon/onestatus',

  -- File manipulation
  'justinmk/vim-dirvish',

  -- Manipulate brackets
  'tpope/vim-surround',

  -- Highlight caracters for inline jumps
  'unblevable/quick-scope',

  -- preview rgb / hex colors
  { 'brenoprata10/nvim-highlight-colors', opts = {} },

  -- Camel to Snek
  'nicwest/vim-camelsnek',
  {
    'projekt0n/github-nvim-theme',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('github-theme').setup {
        -- ...
      }
      vim.cmd 'colorscheme github_light'
    end,
  },
}
