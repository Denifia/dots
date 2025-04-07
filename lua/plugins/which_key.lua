return {
  -- Shows keybindings in popup as you type
  'folke/which-key.nvim',
  event = 'VimEnter',
  lazy = true,
  opts = {
    mappings = vim.g.have_nerd_font,
    keys = {},
  },
}
