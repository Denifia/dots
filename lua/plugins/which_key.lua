return {
  -- https://github.com/folke/which-key.nvim
  -- Shows keybindings in popup as you type
  'folke/which-key.nvim',
  event = 'VimEnter',
  lazy = true,
  init = function()
    require('which-key').setup {
      mappings = vim.g.have_nerd_font,
      keys = {},
    }

    local wk = require 'which-key'
    wk.add {
      { '<leader>s', group = '[S]earch' }, -- group
    }
  end,
}
