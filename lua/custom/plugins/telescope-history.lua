-- Telescope smart history for per-picker search history
return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-telescope/telescope-smart-history.nvim',
      'kkharji/sqlite.lua',
    },
    opts = function(_, opts)
      local actions = require 'telescope.actions'

      opts.defaults = vim.tbl_deep_extend('force', opts.defaults or {}, {
        history = {
          path = vim.fn.stdpath('data') .. '/telescope_history.sqlite3',
          limit = 100,
        },
        mappings = {
          i = {
            ['<C-r>'] = actions.cycle_history_prev,
            ['<C-s>'] = actions.cycle_history_next,
          },
        },
      })

      return opts
    end,
    config = function(_, opts)
      require('telescope').setup(opts)
      pcall(require('telescope').load_extension, 'smart_history')
    end,
  },
}
