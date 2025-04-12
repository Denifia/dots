return {
  -- https://github.com/folke/which-key.nvim
  -- Shows keybindings in popup as you type
  'folke/which-key.nvim',
  enabled = true,
  event = 'VimEnter',
  lazy = true,
  init = function()
    require('which-key').setup {
      mappings = vim.g.have_nerd_font,
      keys = {
        scroll_down = '<c-down>', -- binding to scroll down inside the popup
        scroll_up = '<c-up>', -- binding to scroll up inside the popup
      },
    }

    local wk = require 'which-key'
    wk.add {
      { '<leader>s', group = '[S]earch' },
      { '<leader>', group = 'leader' },
      { 's', group = '[S]urround' },
      { 'g', group = '[G]o to' },
    }
  end,
}
